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
		$pregunta = $this->Pregunta->find('first', $options);
		
		$conditions = array('conditions' => array('pregunta_id' => $id),
		    'recursive' => 0);
		$opciones = $this->Pregunta->Opcion->find('all',$conditions);
		$this->set(compact('pregunta', 'opciones'));
	}

/**
 * add method
 *
 * @return void
 */
	public function add($encuestaId = null) {
		if ($this->request->is('post')) {
			$this->Pregunta->create();
			if ($this->Pregunta->save($this->request->data)) {
				$this->Flash->success(__('The pregunta has been saved.'));
				$encuestaId = $this->request->data['Pregunta']['encuesta_id'];
				return $this->redirect(array('controller' => 'Encuestas','action' => 'view',$encuestaId));
			} else {
				$this->Flash->error(__('The pregunta could not be saved. Please, try again.'));
			}
		}
		$encuestas = $this->Pregunta->Encuesta->find('list');
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
		if (!$this->Pregunta->exists($id)) {
			throw new NotFoundException(__('Invalid pregunta'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Pregunta->save($this->request->data)) {
			    $this->Flash->success(__('The pregunta has been saved.'));
			    $encuestaId = $this->request->data['Pregunta']['encuesta_id'];
			    return $this->redirect(array('controller' => 'Encuestas','action' => 'view',$encuestaId));
			} else {
				$this->Flash->error(__('The pregunta could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Pregunta.' . $this->Pregunta->primaryKey => $id));
			$this->request->data = $this->Pregunta->find('first', $options);
		}
		$encuestas = $this->Pregunta->Encuesta->find('list');
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
		
		$this->Pregunta->recursive = 0;
		$this->request->data = $this->Pregunta->findById($id);
		$this->request->data['Pregunta']['estado'] = 'D';
		
		if ($this->Pregunta->save($this->request->data)) {
			$this->Flash->success(__('The pregunta has been deleted.'));
		} else {
			$this->Flash->error(__('The pregunta could not be deleted. Please, try again.'));
		}
		//return $this->redirect(array('action' => 'index'));
		$encuestaId = $this->request->data['Pregunta']['encuesta_id'];
		return $this->redirect(array('controller' => 'Encuestas','action' => 'view',$encuestaId));
	}
}
