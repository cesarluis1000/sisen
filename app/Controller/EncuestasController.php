<?php
App::uses('AppController', 'Controller');
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
				$this->Flash->success(__('The encuesta has been saved.'));
				$encuestaId = $this->Encuesta->getInsertID();
				return $this->redirect(array('action' => 'view',$encuestaId));
			} else {
				$this->Flash->error(__('The encuesta could not be saved. Please, try again.'));
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
				$this->Flash->success(__('The encuesta has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The encuesta could not be saved. Please, try again.'));
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
			$this->Flash->success(__('The encuesta has been deleted.'));
		} else {
			$this->Flash->error(__('The encuesta could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
