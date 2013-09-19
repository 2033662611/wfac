<?php
App::uses ( 'AppModel', 'Model' );
class SalesItem extends AppModel {
	public $displayField = 'name';
	public $belongsTo = array (
			'SalesOrder' 
	);
	public $hasMany = array (
			'SalesPart' 
	);
}
			