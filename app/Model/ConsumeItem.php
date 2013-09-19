<?php
App::uses ( 'AppModel', 'Model' );
class ConsumeItem extends AppModel {
	public $displayField = 'id';
	public $validate = array (
			'quantity' => 'naturalNumber' 
	);
	public $belongsTo = array (
			'PurchaseItem',
			'SalesOrder' 
	);
}
			