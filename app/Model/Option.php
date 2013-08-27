<?php
App::uses ( 'AppModel', 'Model' );
class Option extends AppModel {
	public $displayField = 'id';
	public $validate = array (
			'option_value' => 'naturalNumber',
			'option_text' => 'notempty' 
	);
	public $belongsTo = array (
			'OptionGroup' 
	);
}
			