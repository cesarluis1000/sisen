<?php
App::uses('AppController', 'Controller');
App::uses('CakeEmail', 'Network/Email');
/**
 * Encuestados Controller
 *
 * @property Encuestado $Encuestado
 * @property PaginatorComponent $Paginator
 */
class EncuestadosController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

	public function correo($id = null) {
	    
	    $this->Encuestado->recursive = 0;
	    $encuestado = $this->Encuestado->findById($id);
	    
	    $Email = new CakeEmail('smtp'); // Replace Smtp to default if you don’t want send mail from SMTP
	    $Email->to($encuestado['Encuestado']['correo']);
	    $Email->emailFormat('html');
	    $data = array(
	        'encuestadoId'=> $encuestado['Encuestado']['id'],
	        'encuestado' => $encuestado['Encuestado']['nombres'].' '.$encuestado['Encuestado']['app'].' '.$encuestado['Encuestado']['apm'],
	        'dni'=> $encuestado['Encuestado']['dni'],
	        'hash'=> $encuestado['Encuestado']['hash'],
	        'encuesta'=> $encuestado['Encuesta']['nombre'],
	        'fecha_inicio' => $encuestado['Encuesta']['fecha_inicio'],
	        'fecha_fin'    => $encuestado['Encuesta']['fecha_fin']
	    );
	    $Email->template('correo_encuesta')->viewVars( $data ); // pass your variables here.
	    $Email->subject('Cooperativa San Francisco: '.$encuestado['Encuesta']['nombre']);
	    $Email->from(array('ventas@elmundotec.com' => 'Cooperativa San Francisco'));
	    if($Email->send()){
	        $this->Encuestado->id=$id;
	        $this->Encuestado->saveField("correo_enviado","Y");
	        $this->Flash->success(__('Correo enviado'));
	    }else{
	        $this->Flash->error(__('Error intente de nuevo'));
	    }
	    
	    $this->set(compact('encuestado'));
	    
	}
	
	public function correos($encuestaId = null) {

	    $this->Encuestado->unBindModel(array('hasMany'=>array('Respuesta')));
	    $options = array('conditions' => array('Encuestado.encuesta_id' => $encuestaId,
	                                           'Encuestado.estado' => 'A'));
	    $encuestados = $this->Encuestado->find('all', $options);
	    
	    $b_correos_enviados = true;
	    foreach ($encuestados as $i => $encuestado){
	        $Email = new CakeEmail('smtp'); // Replace Smtp to default if you don’t want send mail from SMTP
	        $Email->to($encuestado['Encuestado']['correo']);
	        $Email->emailFormat('html');
	        $data = array(
	            'encuestadoId'=> $encuestado['Encuestado']['id'],
	            'encuestado' => $encuestado['Encuestado']['nombres'].' '.$encuestado['Encuestado']['app'].' '.$encuestado['Encuestado']['apm'],
	            'dni'=> $encuestado['Encuestado']['dni'],
	            'hash'=> $encuestado['Encuestado']['hash'],
	            'encuesta'=> $encuestado['Encuesta']['nombre'],
	            'fecha_inicio' => $encuestado['Encuesta']['fecha_inicio'],
	            'fecha_fin'    => $encuestado['Encuesta']['fecha_fin']
	        );
	        $Email->template('correo_encuesta')->viewVars( $data ); // pass your variables here.
	        $Email->subject('Cooperativa San Francisco: '.$encuestado['Encuesta']['nombre']);
	        $Email->from(array('cesarluis1000@gmail.com' => 'Cooperativa San Francisco'));
	        if(!$Email->send()){
	            $b_correos_enviados = false;
	        }else{
	            $this->Encuestado->id=$encuestado['Encuestado']['id'];
	            $this->Encuestado->saveField("correo_enviado","Y");
	        }
	    }
	    if($b_correos_enviados){
	        $this->Flash->success(__('Correos enviado'));
	    }else{
	        $this->Flash->error(__('Error intente de nuevo'));
	    }
	    //pr($encuestados);
	    $this->set(compact('encuestados'));
	    
	}
/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Encuestado->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Encuestado->displayField)?$this->Encuestado->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Encuestado'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Encuestado.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		$this->set('encuestados', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
	    $this->loadModel('Pregunta');
	    $this->loadModel('Respuesta');
	    
		if (!$this->Encuestado->exists($id)) {
			throw new NotFoundException(__('Invalid encuestado'));
		}
		$this->Encuestado->recursive = 0;
		$encuestado = $this->Encuestado->findById($id);
		
		$encuestaId = $encuestado['Encuesta']['id'];
		$this->Pregunta->unBindModel(array('belongsTo'=>array('Encuesta')));
		$options = array('conditions' => array('Pregunta.encuesta_id' => $encuestaId));
		$preguntas = $this->Pregunta->find('all', $options);
		
		foreach ($preguntas as $i => $pregunta){
		    foreach ($pregunta['Opcion'] as $j => $opcion){
		        $options = array('conditions' => array('Respuesta.opcion_id' => $opcion['id'],
		                                               'Respuesta.encuestado_id' => $id));
		        $this->Respuesta->recursive = -1;
		        $respuesta = $this->Respuesta->find('first', $options);
		        
		        if (!empty($respuesta)){
		            $preguntas[$i]['Opcion'][$j]['checked'] = 'checked';
		            $preguntas[$i]['Opcion'][$j]['Respuesta'] = $respuesta['Respuesta'];
		        }else{
		            $preguntas[$i]['Opcion'][$j]['checked'] = '';
		        }		       
		    }  
		}
		
		$this->set(compact('encuestado', 'preguntas'));
	}
	
	public function encuestado($hash = null) {
	    $this->loadModel('Pregunta');
	    $this->loadModel('Respuesta');
	    $this->loadModel('Encuestado');
	    $this->Encuestado->recursive = 0;
	    $options = array('conditions' => array('Encuestado.hash' => $hash));
	    $encuestado = $this->Encuestado->find('first', $options);
	    $id = $encuestado['Encuestado']['id'];
	    
	    if (!$this->Encuestado->exists($id)) {
	        throw new NotFoundException(__('Invalid encuestado'));
	    }
	    $this->Encuestado->recursive = 0;
	    $encuestado = $this->Encuestado->findById($id);
	    
	    $encuestaId = $encuestado['Encuesta']['id'];
	    $this->Pregunta->unBindModel(array('belongsTo'=>array('Encuesta')));
	    $options = array('conditions' => array('Pregunta.encuesta_id' => $encuestaId));
	    $preguntas = $this->Pregunta->find('all', $options);
	    
	    foreach ($preguntas as $i => $pregunta){
	        foreach ($pregunta['Opcion'] as $j => $opcion){
	            $options = array('conditions' => array('Respuesta.opcion_id' => $opcion['id'],
	                'Respuesta.encuestado_id' => $id));
	            $this->Respuesta->recursive = -1;
	            $respuesta = $this->Respuesta->find('first', $options);
	            
	            if (!empty($respuesta)){
	                $preguntas[$i]['Opcion'][$j]['checked'] = 'checked';
	                $preguntas[$i]['Opcion'][$j]['Respuesta'] = $respuesta['Respuesta'];
	            }else{
	                $preguntas[$i]['Opcion'][$j]['checked'] = '';
	            }
	        }
	    }
	    
	    $this->set(compact('encuestado', 'preguntas'));
	}

/**
 * add method
 *
 * @return void
 */
	public function add($encuestaId = null) {
		if ($this->request->is('post')) {
			$this->Encuestado->create();
			$this->request->data['Encuestado']['hash'] = md5(microtime(true).mt_Rand());
			if ($this->Encuestado->save($this->request->data)) {
			    $this->Flash->success(__('El encuestado se ha guardado.'));
			    $encuestaId = $this->request->data['Encuestado']['encuesta_id'];
			    return $this->redirect(array('controller' => 'Encuestas','action' => 'view',$encuestaId));
			} else {
				$this->Flash->error(__('The encuestado could not be saved. Please, try again.'));
			}
		}
		$encuestas = $this->Encuestado->Encuesta->find('list');
		$this->set(compact('encuestaId', 'encuestas'));
	}
	
	public function add_list($encuestaId = null) {
	    if ($this->request->is('post')) {
	        $lineSplit = preg_split('/[\r\n]+/', $this->request->data['Encuestado']['encuestados'], -1, PREG_SPLIT_NO_EMPTY);
	        unset($this->request->data['Encuestado']);
	        foreach ($lineSplit as $line) {
	            $splitArr = explode("\t", $line);
	            $this->request->data[] = array('nombres' => $splitArr[0],
	                'app'      => $splitArr[1],
	                'apm'      => $splitArr[2],
	                'dni'      => $splitArr[3],
	                'telefono' => $splitArr[4],
	                'correo'   => $splitArr[5],
	                'encuesta_id' => $encuestaId,
	                'hash'     => md5(microtime(true).mt_Rand())
	            );
	        }
	        //pr($this->request->data);
	        $this->Encuestado->create();
	        if ($this->Encuestado->saveMany($this->request->data)) {	            
	            $this->Flash->success(__('Los encuestados se hah guardado.'));
	            return $this->redirect(array('controller' => 'Encuestas', 'action' => 'view', $encuestaId));
	        } else {
	            $this->Flash->error(__('The encuestados could not be saved. Please, try again.'));
	        }
	    }
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Encuestado->exists($id)) {
			throw new NotFoundException(__('Invalid encuestado'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Encuestado->save($this->request->data)) {
			    $this->Flash->success(__('La encuestado se ha modificado.'));
			    $encuestaId = $this->request->data['Encuestado']['encuesta_id'];
			    return $this->redirect(array('controller' => 'Encuestas','action' => 'view',$encuestaId));
			} else {
				$this->Flash->error(__('The encuestado could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Encuestado.' . $this->Encuestado->primaryKey => $id));
			$this->request->data = $this->Encuestado->find('first', $options);
		}
		$encuestas = $this->Encuestado->Encuesta->find('list');
		$this->set(compact('encuestas'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Encuestado->id = $id;
		if (!$this->Encuestado->exists()) {
			throw new NotFoundException(__('Invalid encuestado'));
		}
		$this->request->allowMethod('post', 'delete');
		
		$this->Encuestado->recursive = 0;
		$this->request->data = $this->Encuestado->findById($id);
		$this->request->data['Encuestado']['estado'] = 'D';
		
		if ($this->Encuestado->save($this->request->data)) {
			$this->Flash->success(__('The encuestado has been deleted.'));
		} else {
			$this->Flash->error(__('The encuestado could not be deleted. Please, try again.'));
		}
		$encuestaId = $this->request->data['Encuestado']['encuesta_id'];
		return $this->redirect(array('controller' => 'Encuestas','action' => 'view',$encuestaId));
	}
}
