<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {
    public $components = array(
        'Acl','RequestHandler',//'DebugKit.Toolbar',
        'Auth' => array(
            'loginAction' => array(
                'controller' => 'users',
                'action' => 'login'
            ),
            'logoutRedirect' => array(
                'controller' => 'users',
                'action' => 'login'
            ),
			//Ruta de logeo
            'loginRedirect' => array(
                'controller' => 'Encuestas',
                'action' => 'index'
            ),
            'authorize' => array(
                'Actions' => array('actionPath' => 'controllers')
            )
        ),
         'Paginator', 'Session', 'Flash'
    );
    public $helpers = array('Html', 'Form', 'Session');

	public $a_estados;
	
	function beforeFilter(){
	    $this->response->header('Access-Control-Allow-Origin','*');
	    $this->response->header('Access-Control-Allow-Credentials','true');
	    $this->response->header('Access-Control-Allow-Methods', '*');
	    $this->response->header('Access-Control-Allow-Headers', '*');
	    $this->response->header('Allow', 'GET, POST, PUT, DELETE, OPTIONS');
	    $this->response->header('Content-Type', 'application/json');
	    $this->response->header('Access-Control-Max-Age','3600');
	    
        $this->paginate = array('limit'=>20);
		$this->a_estados = array('A'=>'Activo','D'=>'Desactivo');
		$this->set('a_estados',$this->a_estados);
		
		$this->Auth->unauthorizedRedirect=FALSE ;
		$this->Auth->authError=__('You are not authorized to access that location.');
		
		/*$allow = array('login','logout','display');
		if(in_array($this->params['controller'],array('personas'))){
		    $allow = array_merge($allow,array('index','edit','view','add','delete','options'));		    		    
		}*/
		//$this->Auth->allow($allow);
		$this->Auth->allow('login','logout','display','login2','index2','add2','edit2','view2','delete2');
	
		$this->__checkAuth();				
	}
	
	public function options(){	    
	    $this->set(array(
	        'options' => array(),
	        '_serialize' => array('options')
	    ));
	}
	

    private function __checkAuth() {
        $currentUser = $this->Auth->user();
        //pr($currentUser);
        if(!empty($currentUser)){
           $params = array('conditions' => array('Aro.model' => 'group', 'Aro.foreign_key' => $currentUser['Group']['id']),'order' => 'Aro.lft','recursive' => 0);
           $aro = $this->Acl->Aro->find('first',$params);
           //pr($aro);
           $this->loadModel('Menu');
           $this->Menu->unbindModel(array('belongsTo' => array('ParentMenu')));
           $this->Menu->unbindModel(array('hasMany' => array('ChildMenu')));
           $params1 = array('conditions' => array('Menu.aro_id' => $aro['Aro']['id'],'Menu.parent_id' => ''),'order' => 'Menu.lft');
           $a_menu = $this->Menu->find('all',$params1);
           foreach ($a_menu as $id => $item){
               
               $this->Menu->unbindModel(array('belongsTo' => array('ParentMenu')));
               $this->Menu->unbindModel(array('hasMany' => array('ChildMenu')));
               $params2 = array('conditions' => array('Menu.parent_id' => $item['Menu']['id']),'order' => 'Menu.lft');
               $a_menu1 = $this->Menu->find('all',$params2);
               
               foreach ($a_menu1 as $id1 => $item1){
                  $params3 = array('conditions' => array('Aco.id' => $item1['Aco']['parent_id']),'recursive' => 0);
                  $a_aco_controlador = $this->Acl->Aco->find('first',$params3);
                  $a_menu1[$id1]['Controlador'] = $a_aco_controlador['Aco'];
               }
               
               $a_menu[$id]['Acciones'] = $a_menu1;
           }
        }
        $this->set(compact('a_menu','currentUser'));
    }
}
