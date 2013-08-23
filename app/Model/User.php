<?php
App::uses ( 'AppModel', 'Model' );
class User extends AppModel {
	public $displayField = 'username';
	public $validate = array (
			'username' => 'notempty',
			'password' => 'notempty' 
	);
	public $belongsTo = array (
			'Group' 
	);
}
