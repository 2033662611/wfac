<?php
App::uses ( 'AppModel', 'Model' );
class ControllerFile extends AppModel {
	public $displayField = 'file_name';
	public $validate = array (
			'table_name' => 'notempty' 
	);
	public function beforeSave($options = array()) {
		if (empty ( $this->data [$this->alias] ['id'] )) {
			if (empty ( $this->data [$this->alias] ['file_name'] )) {
				$class_name = Inflector::camelize ( $this->data [$this->alias] ['table_name'] ) . 'Controller';
				$this->data [$this->alias] ['file_name'] = $class_name . '.php';
			} else {
				$class_name = substr ( $this->data [$this->alias] ['file_name'], 0, - 4 );
				
				$model_name = Inflector::classify ( $this->data [$this->alias] ['table_name'] );
				$uses = "public \$uses = array (
			'$model_name' 
	);
	";
			}
			
			$contents = "<?php
App::uses ( 'AppController', 'Controller' );
class $class_name extends AppController {
	{$uses}public \$scaffold;
}
			";
			$filename = ROOT . '/app/Controller/' . $this->data [$this->alias] ['file_name'];
			
			if (! file_exists ( $filename )) {
				file_put_contents ( $filename, $contents );
				chmod ( $filename, 0666 );
			}
		}
		
		return true;
	}
}
