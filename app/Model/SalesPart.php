<?php
App::uses ( 'AppModel', 'Model' );
class SalesPart extends AppModel {
	public $displayField = 'name';
	public $belongsTo = array (
			'SalesItem' 
	);
	public $hasMany = array (
			'Process' 
	);
}
			