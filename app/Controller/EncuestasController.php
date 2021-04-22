<?php
App::uses('AppController', 'Controller');
App::uses('CakeEmail', 'Network/Email');
/**
 * Encuestas Controller
 *
 * @property Encuesta $Encuesta
 * @property PaginatorComponent $Paginator
 */
class EncuestasController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

	public function correos_video($encuestaId = null) {
	    $this->loadModel('Encuestado');
	    
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
	            'encuestaId'   => $encuestado['Encuesta']['id'],
	            'hash'         => $encuestado['Encuesta']['hash'],
	            'encuestado'   => $encuestado['Encuestado']['nombres'].' '.$encuestado['Encuestado']['app'].' '.$encuestado['Encuestado']['apm'],
	            'encuesta'     => $encuestado['Encuesta']['nombre'],
	            'fecha_inicio' => $encuestado['Encuesta']['fecha_inicio'],
	            'fecha_fin'    => $encuestado['Encuesta']['fecha_fin']
	        );
	        $Email->template('correo_video')->viewVars( $data ); // pass your variables here.
	        $Email->subject('Cooperativa San Francisco: Video para encuesta '.$encuestado['Encuesta']['nombre']);
	        $Email->from(array('sisen@elmundotec.com' => 'Cooperativa San Francisco'));
	        if(!$Email->send()){
	            $b_correos_enviados = false;
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
	
	public function login_video($hash = null){
	    $this->loadModel('Encuestado');
	    if ($this->request->is('post')) {
	        //pr($this->request->data);
	        $this->Encuestado->unBindModel(array('hasMany'=>array('Respuesta')));
	        $options = array('conditions' => array('Encuestado.telefono' => $this->request->data['Encuestado']['telefono'],
	                                               'Encuestado.dni' => $this->request->data['Encuestado']['password'],
	                                               'Encuesta.hash' => $this->request->data['Encuesta']['hash'],
	                                               'Encuesta.fecha_fin <=' => date("Y-m-d h:i:s"),
	                                               'Encuesta.estado' => 'A',
	                                               'Encuestado.estado' => array('A','B')
	                                               ));
	        
	        $encuestados = $this->Encuestado->find('first', $options);
	        //pr($encuestados);
	        //exit;
	        $nro_encuestado = $this->Encuestado->find('count', $options);
	        
	        if ($nro_encuestado > 0) {
	            $this->Encuestado->id=$encuestados['Encuestado']['id'];
	            $this->Encuestado->saveField("estado","B");
	            $this->Session->write('Encuesta', $this->request->data['Encuesta']);
	            $this->Session->write('Encuestado', $this->request->data['Encuestado']);
	            return $this->redirect(array('action' => 'enlace_video'));
	        } else {
	            $this->Flash->error(__('Tu telefono o password fue incorrecto.'));
	            return $this->redirect(array('controller' => 'Encuesta', 'action' => 'login_video', $this->request->data['Encuesta']['hash']));
	        }
	    }
	    $this->set(compact('hash'));
	}
	
	public function enlace_video() {
	    $this->loadModel('Encuestado');
	    $this->request->data['Encuesta'] = $this->Session->read('Encuesta');
	    $this->request->data['Encuestado'] = $this->Session->read('Encuestado');
	    if (isset($this->request->data['Encuestado'])){
	        
	        $this->Encuestado->unBindModel(array('hasMany'=>array('Respuesta')));
	        $options = array('conditions' => array('Encuestado.telefono' => $this->request->data['Encuestado']['telefono'],
                                    	            'Encuestado.dni' => $this->request->data['Encuestado']['password'],
                                    	            'Encuesta.hash' => $this->request->data['Encuesta']['hash'],
                                    	            'Encuesta.estado' => 'A',
	                                               'Encuestado.estado' => array('A','B'),
	                                               //'Encuesta.fecha_inicio >=' => date("Y-m-d", strtotime("-1 week")),
	                       ),
	            'order' => array('Encuesta.fecha_inicio')
	            
	        );
	        $encuesta = $this->Encuestado->find('first', $options);
    	    $this->set(compact('encuesta'));
    	    //$this->Session->delete('Encuestado');
	    }else{
	        return $this->redirect(array('action' => 'login_video'));
	    }
	}
	
	public function grafico($id = null) {
	    
	    $this->loadModel('Encuestado');
	    $this->loadModel('Pregunta');
	    $this->loadModel('Respuesta');
	    
	    $this->Encuesta->recursive = -1;
	    $options = array('conditions' => array('Encuesta.' . $this->Encuesta->primaryKey => $id));
	    $encuesta = $this->Encuesta->find('first', $options);
	    //pr($encuesta);
	    
	    $this->Encuestado->recursive = -1;
	    $options = array('conditions' => array('Encuestado.encuesta_id' => $id,
	                                           'Encuestado.estado'=>'E'));
	    $nro_encuestados = $this->Encuestado->find('count', $options);
	    //pr($nro_encuestados);
	    
	    $this->Encuestado->recursive = -1;
	    $options = array('conditions' => array('Encuestado.encuesta_id' => $id,
	                                           'Encuestado.estado'=>'B'));
	    $nro_abstencion = $this->Encuestado->find('count', $options);
	    //pr($nro_abstencion);
	    
	    $this->Pregunta->unBindModel(array('belongsTo'=>array('Encuesta')));
	    $options = array('conditions' => array('Pregunta.encuesta_id' => $id));
	    $preguntas = $this->Pregunta->find('all',$options);
	    //pr($preguntas);
	    
	    $config = [
	        "type" => "bar",
             "options" => [
                     "legend" => [
                         "display" => true,
                         "labels" => [
                             "fontSize" => 14,
                             "fontStyle" => "italic",
                         ]
                         
                     ],
                 
                    "scales" => [
                        "yAxes" => [
                            [
                                "ticks" => [
                                    "beginAtZero" => true,
                                    "fontSize" => 14,
                                ]
                            ]
                        ],
                        
                        "xAxes" => [
                            [
                                "ticks" => [
                                    "fontSize" => 12,
                                ]
                            ]
                        ]
                    ]
                ]
	           ]; 
	    
	    foreach ($preguntas as $i => $pregunta){
	        
	        $a_opciones = null;
	        $a_respuestas = null;
	        $a_backgroundColor = null;
	        $a_borderColor = null;
	        $i_respuesta_pregunta =0;
	        $i_blanco =0;
	        foreach ($pregunta['Opcion'] as $j => $opcion){
	            $a_opciones[] = $opcion['nombre'];
	            $options = array('conditions' => array('Respuesta.opcion_id' => $opcion['id']));
	            $i_respuestas_opcion = $this->Respuesta->find('count',$options);
	            $i_respuesta_pregunta += $i_respuestas_opcion;
	            $a_respuestas[] = $i_respuestas_opcion;
	            $a_backgroundColor[] = $this->a_backgroundColor[$j];
	            $a_borderColor[] = $this->a_borderColor[$j];
	        }
	        
	        //pr($a_opciones);
	        $i_quorum = $nro_encuestados + $nro_abstencion;
	        $i_blanco = $nro_encuestados - $i_respuesta_pregunta;
	        $config["data"] = [
	                           "labels" => $a_opciones,
                	           "datasets" => [
                    	                   [
                    	                       "label" => "Total:{$i_quorum}, Votos:{$i_respuesta_pregunta}, Abstenciones:{$nro_abstencion}, Blanco:{$i_blanco} => {$pregunta['Pregunta']['nombre']}",
                            	                "data" => $a_respuestas,
                            	                "backgroundColor" => $a_backgroundColor,
                            	                "borderColor" => $a_borderColor,
                            	                "borderWidth" => 2
                    	                   ]
                	              ]
                	        ];
	        
	        $preguntas[$i]['config'] = $config;
	    }
	    
	    $this->set(compact('encuesta','preguntas'));

	    
	}
/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Encuesta->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Encuesta->displayField)?$this->Encuesta->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Encuesta'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Encuesta.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		$this->set('encuestas', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Encuesta->exists($id)) {
			throw new NotFoundException(__('Invalid encuesta'));
		}
		$options = array('conditions' => array('Encuesta.' . $this->Encuesta->primaryKey => $id));
		$encuesta = $this->Encuesta->find('first', $options);
		
		$conditions = array('conditions' => array('encuesta_id' => $id),
		                      'recursive' => 0);
		$preguntas = $this->Encuesta->Pregunta->find('all',$conditions);
		$encuestados = $this->Encuesta->Encuestado->find('all',$conditions);
		$this->set(compact('encuesta', 'preguntas', 'encuestados'));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
//		    pr($this->request->data);
//		    exit;
			$this->Encuesta->create();
			$this->request->data['Encuesta']['hash'] = md5(microtime(true).mt_Rand());
			$this->request->data['Encuesta']['enlace_zoom'] = trim($this->request->data['Encuesta']['enlace_zoom']);
			if ($this->Encuesta->save($this->request->data)) {
				$this->Flash->success(__('La encuesta se ha guardado.'));
				$encuestaId = $this->Encuesta->getInsertID();
				return $this->redirect(array('action' => 'view',$encuestaId));
			} else {
				$this->Flash->error(__('La encuesta no se pudo salvar. Inténtalo de nuevo.'));
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
		if (!$this->Encuesta->exists($id)) {
			throw new NotFoundException(__('Invalid encuesta'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Encuesta->save($this->request->data)) {
				$this->Flash->success(__('La encuesta se ha modificado.'));
				return $this->redirect(array('action' => 'view',$id));
			} else {
				$this->Flash->error(__('La encuesta no se pudo salvar. Inténtalo de nuevo.'));
			}
		} else {
			$options = array('conditions' => array('Encuesta.' . $this->Encuesta->primaryKey => $id));
			$this->request->data = $this->Encuesta->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Encuesta->id = $id;
		if (!$this->Encuesta->exists()) {
			throw new NotFoundException(__('Invalid encuesta'));
		}
		$this->request->allowMethod('post', 'delete');
		
		$this->Encuesta->recursive = 0;
		$this->request->data = $this->Encuesta->findById($id);
		$this->request->data['Encuesta']['estado'] = 'D';
		
		if ($this->Encuesta->save($this->request->data)) {
			$this->Flash->success(__('La encuesta ha sido Desactivada.'));
		} else {
			$this->Flash->error(__('La encuesta no se pudo borrar. Inténtalo de nuevo.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
