<?php
App::uses ( 'AuthComponent', 'Controller/Component' );

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
	public function beforeSave($options = array()) {
		if (isset ( $this->data [$this->alias] ['password'] )) {
			$this->data [$this->alias] ['password'] = AuthComponent::password ( $this->data [$this->alias] ['password'] );
		}
		return true;
	}
}
