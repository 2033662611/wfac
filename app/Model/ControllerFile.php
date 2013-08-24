<?php
App::uses ( 'AppModel', 'Model' );
class ControllerFile extends AppModel {
	public $displayField = 'file_name';
	public $validate = array (
			'table_name' => 'notempty' 
	);
}
