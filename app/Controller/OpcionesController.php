<?php
App::uses('AppController', 'Controller');
/**
 * Opciones Controller
 *
 * @property Opcion $Opcion
 * @property PaginatorComponent $Paginator
 */
class OpcionesController extends AppController {

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
		$this->Opcion->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Opcion->displayField)?$this->Opcion->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Opcion'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Opcion.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		$this->set('opciones', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Opcion->exists($id)) {
			throw new NotFoundException(__('Invalid opcion'));
		}
		$options = array('conditions' => array('Opcion.' . $this->Opcion->primaryKey => $id));
		$this->set('opcion', $this->Opcion->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add($preguntaId = null) {
		if ($this->request->is('post')) {
			$this->Opcion->create();
			if ($this->Opcion->save($this->request->data)) {
				$this->Flash->success(__('The opcion has been saved.'));
				$preguntaId = $this->request->data['Opcion']['pregunta_id'];
				return $this->redirect(array('controller' => 'Preguntas','action' => 'view',$preguntaId));
			} else {
				$this->Flash->error(__('The opcion could not be saved. Please, try again.'));
			}
		}
		$preguntas = $this->Opcion->Pregunta->find('list');
		$this->set(compact('preguntaId', 'preguntas'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Opcion->exists($id)) {
			throw new NotFoundException(__('Invalid opcion'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Opcion->save($this->request->data)) {
				$this->Flash->success(__('The opcion has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The opcion could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Opcion.' . $this->Opcion->primaryKey => $id));
			$this->request->data = $this->Opcion->find('first', $options);
		}
		$preguntas = $this->Opcion->Pregunta->find('list');
		$this->set(compact('preguntas'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Opcion->id = $id;
		if (!$this->Opcion->exists()) {
			throw new NotFoundException(__('Invalid opcion'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Opcion->delete()) {
			$this->Flash->success(__('The opcion has been deleted.'));
		} else {
			$this->Flash->error(__('The opcion could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
