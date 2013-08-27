<?php
App::uses ( 'AppModel', 'Model' );
class PurchaseOrder extends AppModel {
	public $displayField = 'id';
	public $validate = array (
			'company_name' => 'notempty' 
	);
	public $hasMany = array (
			'PurchaseItem' 
	);
}
			