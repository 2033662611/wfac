<?php
App::uses ( 'AppModel', 'Model' );
class PurchaseItem extends AppModel {
	public $displayField = 'id';
	public $validate = array (
			'name' => 'notempty',
			'unit_price' => array (
					'rule' => array (
							'decimal',
							2 
					) 
			),
			'quantity' => 'naturalNumber', // greater than zero
			'unit' => 'notempty' 
	);
	public $belongsTo = array (
			'PurchaseOrder' 
	);
}
			