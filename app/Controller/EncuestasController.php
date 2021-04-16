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
	            'encuestado'   => $encuestado['Encuestado']['nombres'].' '.$encuestado['Encuestado']['app'].' '.$encuestado['Encuestado']['apm'],
	            'encuesta'     => $encuestado['Encuesta']['nombre'],
	            'fecha_inicio' => $encuestado['Encuesta']['fecha_inicio'],
	            'fecha_fin'    => $encuestado['Encuesta']['fecha_fin']
	        );
	        $Email->template('correo_video')->viewVars( $data ); // pass your variables here.
	        $Email->subject('Cooperativa San Francisco: Video para encuesta '.$encuestado['Encuesta']['nombre']);
	        $Email->from('cesarluis1007@gmail.com');
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
	
	public function login_video(){
	    $this->loadModel('Encuestado');
	    if ($this->request->is('post')) {
	        $this->Encuestado->unBindModel(array('hasMany'=>array('Respuesta')));
	        $options = array('conditions' => array('Encuestado.correo' => $this->request->data['Encuestado']['correo'],
	                                               'Encuestado.dni' => $this->request->data['Encuestado']['password'],
	                                               'Encuesta.fecha_inicio >=' => date("Y-m-d", strtotime("-1 week")),
	                                               'Encuesta.estado' => 'A',
	                                               'Encuestado.estado' => 'A',
	                                               ));
	        $encuestado = $this->Encuestado->find('count', $options);
	        if ($encuestado > 0) {
	            $this->Session->write('Encuestado', $this->request->data['Encuestado']);
	            return $this->redirect(array('action' => 'enlace_video'));
	        } else {
	            $this->Flash->error(__('Your username or password was incorrect.'));
	        }
	    }
	}
	
	public function enlace_video() {
	    $this->loadModel('Encuestado');
	    $this->request->data['Encuestado'] = $this->Session->read('Encuestado');
	    if (isset($this->request->data['Encuestado'])){
	        
	        $this->Encuestado->unBindModel(array('hasMany'=>array('Respuesta')));
	        $options = array('conditions' => array('Encuestado.correo' => $this->request->data['Encuestado']['correo'],
	                                               'Encuestado.dni' => $this->request->data['Encuestado']['password'],
                                    	            'Encuesta.estado' => 'A',
                                    	            'Encuestado.estado' => 'A',
	                                               'Encuesta.fecha_inicio >=' => date("Y-m-d", strtotime("-1 week")),
	                       ),
	            'order' => array('Encuesta.fecha_inicio')
	            
	        );
	        $encuesta = $this->Encuestado->find('first', $options);
    	    $this->set(compact('encuesta'));
    	    $this->Session->delete('Encuestado');
	    }else{
	        return $this->redirect(array('action' => 'login_video'));
	    }
	}
	
	public function grafico($id = null) {
	    
	    $this->loadModel('Pregunta');
	    $this->loadModel('Respuesta');
	    
	    $this->Encuesta->recursive = -1;
	    $options = array('conditions' => array('Encuesta.' . $this->Encuesta->primaryKey => $id));
	    $encuesta = $this->Encuesta->find('first', $options);
	    
	    $this->Pregunta->unBindModel(array('belongsTo'=>array('Encuesta')));
	    $options = array('conditions' => array('Pregunta.encuesta_id' => $id));
	    $preguntas = $this->Pregunta->find('all',$options);
    
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
	        
	        $config["data"] = [
	                           "labels" => $a_opciones,
                	           "datasets" => [
                    	                   [
                            	                "label" => "Total:{$i_respuesta_pregunta} => Pregunta: {$pregunta['Pregunta']['nombre']}",
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
