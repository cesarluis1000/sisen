<?php
App::uses('AppController', 'Controller');
/**
 * Personas Controller
 *
 * @property Persona $Persona
 * @property PaginatorComponent $Paginator
 */
class PersonasController extends AppController {

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
		$this->Persona->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Persona->displayField)?$this->Persona->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Persona'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Persona.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		$this->set('personas', $this->Paginator->paginate());
	}

	public function index2() {
	    $Personas = $this->Persona->find('all');
	    $Personas = Set::extract($Personas, '{n}.Persona');
	    //pr($Personas);
	    $this->set(array(
	        'Personas' => $Personas,
	        '_serialize' => array('Personas')
	    ));
	}
/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Persona->exists($id)) {
			throw new NotFoundException(__('Invalid persona'));
		}
		$options = array('conditions' => array('Persona.' . $this->Persona->primaryKey => $id));
		$this->set('persona', $this->Persona->find('first', $options));
	}
	
	public function view2($id) {
	    $Persona = $this->Persona->findById($id);
	    $Persona = Set::extract($Persona, 'Persona');
	    $this->set(array(
	        'Persona' => $Persona,
	        '_serialize' => array('Persona')
	    ));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Persona->create();
			if ($this->Persona->save($this->request->data)) {
				$this->Flash->success(__('The persona has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The persona could not be saved. Please, try again.'));
			}
		}
	}
	
	public function add2() {
	    //pr($this->request->data);
	    $this->Persona->create();
	    if ($this->Persona->save($this->request->data)) {
	        $message = 'Guardado';
	    } else {
	        $message = 'Error';
	    }
	    $this->set(array(
	        'message' => $message,
	        '_serialize' => array('message')
	    ));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Persona->exists($id)) {
			throw new NotFoundException(__('Invalid persona'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Persona->save($this->request->data)) {
				$this->Flash->success(__('The persona has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The persona could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Persona.' . $this->Persona->primaryKey => $id));
			$this->request->data = $this->Persona->find('first', $options);
		}
	}
	
	public function edit2($id) {
	    $this->Persona->id = $id;
	    if ($this->Persona->save($this->request->data)) {
	        $message = 'Actualizar';
	    } else {
	        $message = 'Error';
	    }
	    $this->set(array(
	        'message' => $message,
	        '_serialize' => array('message')
	    ));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Persona->id = $id;
		if (!$this->Persona->exists()) {
			throw new NotFoundException(__('Invalid persona'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Persona->delete()) {
			$this->Flash->success(__('The persona has been deleted.'));
		} else {
			$this->Flash->error(__('The persona could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
	
	public function delete2($id) {
	    if ($this->Persona->delete($id)) {
	        $message = 'Eliminado';
	    } else {
	        $message = 'Error';
	    }
	    $this->set(array(
	        'message' => $message,
	        '_serialize' => array('message')
	    ));
	}
}
