<?php
App::uses('AppController', 'Controller');
/**
 * Respuestas Controller
 *
 * @property Respuesta $Respuesta
 * @property PaginatorComponent $Paginator
 */
class RespuestasController extends AppController {

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
		$this->Respuesta->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Respuesta->displayField)?$this->Respuesta->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Respuesta'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Respuesta.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		$this->set('respuestas', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Respuesta->exists($id)) {
			throw new NotFoundException(__('Invalid respuesta'));
		}
		$options = array('conditions' => array('Respuesta.' . $this->Respuesta->primaryKey => $id));
		$this->set('respuesta', $this->Respuesta->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add($encuestadoId = null) {
	    $this->loadModel('Pregunta');
	    
		if ($this->request->is('post')) {
			$this->Respuesta->create();
			if ($this->Respuesta->save($this->request->data)) {
				$this->Flash->success(__('The respuesta has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The respuesta could not be saved. Please, try again.'));
			}
		}
		$this->Respuesta->Encuestado->recursive = 0;
		$encuestado = $this->Respuesta->Encuestado->findById($encuestadoId);
		
		$encuestaId = $encuestado['Encuesta']['id'];
		$options = array('conditions' => array('Pregunta.encuesta_id' => $encuestaId));
		$preguntas = $this->Pregunta->find('all', $options);
		//pr($preguntas);
		
		$opciones = $this->Respuesta->Opcion->find('list');		
		$this->set(compact('opciones', 'encuestado', 'preguntas'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Respuesta->exists($id)) {
			throw new NotFoundException(__('Invalid respuesta'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Respuesta->save($this->request->data)) {
				$this->Flash->success(__('The respuesta has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The respuesta could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Respuesta.' . $this->Respuesta->primaryKey => $id));
			$this->request->data = $this->Respuesta->find('first', $options);
		}
		$opciones = $this->Respuesta->Opcion->find('list');
		$encuestados = $this->Respuesta->Encuestado->find('list');
		$this->set(compact('opciones', 'encuestados'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Respuesta->id = $id;
		if (!$this->Respuesta->exists()) {
			throw new NotFoundException(__('Invalid respuesta'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Respuesta->delete()) {
			$this->Flash->success(__('The respuesta has been deleted.'));
		} else {
			$this->Flash->error(__('The respuesta could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
