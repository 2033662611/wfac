<?php
App::uses ( 'AppModel', 'Model' );
class SalesOrder extends AppModel {
	public $displayField = 'id';
	public $belongsTo = array (
			'Salesman' => array (
					'className' => 'User',
					'foreignKey' => 'salesman_id' 
			),
			'Picker' => array (
					'className' => 'User',
					'foreignKey' => 'picker_id' 
			),
			'Inputer' => array (
					'className' => 'User',
					'foreignKey' => 'inputer_id' 
			) 
	);
	public $hasMany = array (
			'SalesItem',
			'ConsumeItem' 
	);
}
			