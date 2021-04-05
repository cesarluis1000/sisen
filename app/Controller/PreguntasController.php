<?php
App::uses('AppController', 'Controller');
/**
 * Preguntas Controller
 *
 * @property Pregunta $Pregunta
 * @property PaginatorComponent $Paginator
 */
class PreguntasController extends AppController {

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
		$this->Pregunta->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Pregunta->displayField)?$this->Pregunta->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Pregunta'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Pregunta.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		$this->set('preguntas', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Pregunta->exists($id)) {
			throw new NotFoundException(__('Invalid pregunta'));
		}
		$options = array('conditions' => array('Pregunta.' . $this->Pregunta->primaryKey => $id));
		$this->set('pregunta', $this->Pregunta->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Pregunta->create();
			if ($this->Pregunta->save($this->request->data)) {
				$this->Flash->success(__('The pregunta has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The pregunta could not be saved. Please, try again.'));
			}
		}
		$encuestas = $this->Pregunta->Encuestum->find('list');
		$this->set(compact('encuestas'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Pregunta->exists($id)) {
			throw new NotFoundException(__('Invalid pregunta'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Pregunta->save($this->request->data)) {
				$this->Flash->success(__('The pregunta has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The pregunta could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Pregunta.' . $this->Pregunta->primaryKey => $id));
			$this->request->data = $this->Pregunta->find('first', $options);
		}
		$encuestas = $this->Pregunta->Encuestum->find('list');
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
		$this->Pregunta->id = $id;
		if (!$this->Pregunta->exists()) {
			throw new NotFoundException(__('Invalid pregunta'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Pregunta->delete()) {
			$this->Flash->success(__('The pregunta has been deleted.'));
		} else {
			$this->Flash->error(__('The pregunta could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
