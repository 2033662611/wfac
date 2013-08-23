<?php
App::uses ( 'AppModel', 'Model' );
class Group extends AppModel {
	public $displayField = 'name';
	public $validate = array (
			'name' => 'notempty' 
	);
	public $hasMany = array (
			'User' 
	);
}
