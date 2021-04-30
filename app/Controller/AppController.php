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
		$this->a_correo_enviado = array('Y'=>'Si','N'=>'No');
		$this->set('a_correo_enviado',$this->a_correo_enviado);
		
		$this->a_estados_encuestado = array(
		    'A'=>'Activo',
		    'D'=>'Desactivo',
		    'E'=>'Encuestado',
		    'B'=>'Blanco - Abstencion',
		    'L'=>'Blanco');
		
		$this->set('a_estados_encuestado',$this->a_estados_encuestado);
		$this->a_nro_respuesta = array('1'=>'Una','2'=>'Dos');
		$this->set('a_nro_respuesta',$this->a_nro_respuesta);
		
		 
		$this->a_backgroundColor = [
		    "rgba(0,0,255, 0.3)",
		    "rgba(0,128,128, 0.3)",
		    "rgba(128,0,128, 0.3)",
		    "rgba(192,192,192, 0.3)",
		    "rgba(255, 99, 132, 0.3)",
		    "rgba(54, 162, 235, 0.3)",
		    "rgba(255, 206, 86, 0.3)",
		    "rgba(75, 192, 192, 0.3)", 
		    "rgba(153, 102, 255, 0.3)",
		    "rgba(255, 159, 64, 0.3)"
		];
		
		$this->a_borderColor = [
		    "rgba(0,0,255, 1)",
		    "rgba(0,128,128, 1)",
		    "rgba(128,0,128, 1)",
		    "rgba(192,192,192, 1)", 
		    "rgba(255, 99, 132, 1)",
		    "rgba(54, 162, 235, 1)",
		    "rgba(255, 206, 86, 1)",
		    "rgba(75, 192, 192, 1)", 
		    "rgba(153, 102, 255, 1)",
		    "rgba(255, 159, 64, 1)"
		];
		
		
		$this->Auth->unauthorizedRedirect=FALSE ;
		$this->Auth->authError=__('You are not authorized to access that location.');
		
		/*$allow = array('login','logout','display');
		if(in_array($this->params['controller'],array('personas'))){
		    $allow = array_merge($allow,array('index','edit','view','add','delete','options'));		    		    
		}*/
		//$this->Auth->allow($allow);
		$this->Auth->allow('login','logout','display','login2','index2','add2','edit2','view2','delete2',
		    'login_video','enlace_video','encuestar','encuestado');
	
		$this->__checkAuth();
		$this->__encuestado();
	}
	
	public function options(){	    
	    $this->set(array(
	        'options' => array(),
	        '_serialize' => array('options')
	    ));
	}
	
	private function __encuestado() {
	    //Acciones que utilizarar el layout ecommerce
	    $this->acciones_ecommerce = array('login_video','enlace_video','encuestar','encuestado');
	    if (in_array($this->action, $this->acciones_ecommerce)){
	        $this->layout = 'encuestado';
	    }
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
