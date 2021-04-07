<?php
App::uses('AppController', 'Controller');
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

/**
 * add method
 *
 * @return void
 */
	public function add($encuestaId = null) {
		if ($this->request->is('post')) {
			$this->Encuestado->create();
			if ($this->Encuestado->save($this->request->data)) {
			    $this->Flash->success(__('The encuestado has been saved.'));
			    $encuestaId = $this->request->data['Encuestado']['encuesta_id'];
			    return $this->redirect(array('controller' => 'Encuestas','action' => 'view',$encuestaId));
			} else {
				$this->Flash->error(__('The encuestado could not be saved. Please, try again.'));
			}
		}
		$encuestas = $this->Encuestado->Encuesta->find('list');
		$this->set(compact('encuestaId', 'encuestas'));
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
			    $this->Flash->success(__('The encuestado has been saved.'));
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