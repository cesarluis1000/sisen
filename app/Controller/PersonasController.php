<?php
App::uses('AppController', 'Controller');
/**
 * Personas Controller
 *
 * @property Persona $Persona
 * @property PaginatorComponent $Paginator
 */
class PersonasController extends AppController {

public $components = array('RequestHandler');

    
    public function index() {
        $Personas = $this->Persona->find('all');
        $Personas = Set::extract($Personas, '{n}.Persona');
        $this->set(array(
            'Personas' => $Personas,
            '_serialize' => array('Personas')
        ));
    }

    public function view($id) {
        $Persona = $this->Persona->findById($id);
        $Persona = Set::extract($Persona, 'Persona');
        $this->set(array(
            'Persona' => $Persona,
            '_serialize' => array('Persona')
        ));
    }
    
    public function view2() {
        $Personas = $this->Persona->find('all');
        $Personas = Set::extract($Personas, '{n}.Persona');
        $this->set(array(
            'Personas' => $Personas,
            '_serialize' => array('Personas')
        ));
    }

    public function add() {
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

    public function edit($id) {
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

    public function delete($id) {
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
