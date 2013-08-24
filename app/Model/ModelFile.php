<?php
App::uses ( 'AppModel', 'Model' );
class ModelFile extends AppModel {
	public $displayField = 'file_name';
	public $validate = array (
			'table_name' => 'notempty' 
	);
	public function beforeSave($options = array()) {
		if (empty ( $this->data [$this->alias] ['id'] )) {
			if (empty ( $this->data [$this->alias] ['file_name'] )) {
				$class_name = Inflector::classify ( $this->data [$this->alias] ['table_name'] );
				$this->data [$this->alias] ['file_name'] = $class_name . '.php';
			} else {
				$class_name = substr ( $this->data [$this->alias] ['file_name'], 0, - 4 );
			}
			
			if (empty ( $this->data [$this->alias] ['display_field'] )) {
				$displayField = 'id';
			} else {
				$displayField = $this->data [$this->alias] ['display_field'];
			}
			
			$contents = "<?php
App::uses ( 'AppModel', 'Model' );
class $class_name extends AppModel {
	public \$displayField = '$displayField';
}
			";
			$filename = ROOT . '/app/Model/' . $this->data [$this->alias] ['file_name'];
			
			if (! file_exists ( $filename )) {
				file_put_contents ( $filename, $contents );
				chmod ( $filename, 0666 );
			}
		}
		
		return true;
	}
}
