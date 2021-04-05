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
		$this->set('encuesta', $this->Encuesta->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Encuesta->create();
			if ($this->Encuesta->save($this->request->data)) {
				$this->Flash->success(__('The encuesta has been saved.'));
				return $this->redirect(array('action' => 'index'));
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
		if ($this->Encuesta->delete()) {
			$this->Flash->success(__('The encuesta has been deleted.'));
		} else {
			$this->Flash->error(__('The encuesta could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
