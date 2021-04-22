<?php
App::uses('AppModel', 'Model');
/**
 * Respuesta Model
 *
 * @property Opcion $Opcion
 * @property Encuestado $Encuestado
 */
class Respuesta extends AppModel {

/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
	    'opcion_id' => array(
            'rule' => array(
                'isUnique', array(
                                    'opcion_id', 
                                    'encuestado_id'
                                ), 
                            false
                        ),
            'message' => 'El encuestado y la opcion combinación ya ha sido utilizada'
        ),
		'encuestado_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'estado' => array(
			'notBlank' => array(
				'rule' => array('notBlank'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);

	// The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Opcion' => array(
			'className' => 'Opcion',
			'foreignKey' => 'opcion_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Encuestado' => array(
			'className' => 'Encuestado',
			'foreignKey' => 'encuestado_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
