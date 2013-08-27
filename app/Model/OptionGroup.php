<?php
App::uses ( 'AppModel', 'Model' );
class OptionGroup extends AppModel {
	public $displayField = 'name';
	public $validate = array (
			'name' => 'notempty' 
	);
	public $hasMany = array (
			'Option' 
	);
}
			