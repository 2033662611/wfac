<?php
App::uses ( 'AppModel', 'Model' );
class Option extends AppModel {
	public $displayField = 'option_text';
	public $validate = array (
			'option_value' => 'naturalNumber',
			'option_text' => 'notempty' 
	);
	public $belongsTo = array (
			'OptionGroup' 
	);
	public $hasMany = array (
			'PurchaseItem' => array (
					'foreignKey' => false 
			) 
	);
	public function beforeFind($queryData) {
		$option = $this->find ( 'first', array (
				'fields' => 'option_value',
				'conditions' => array (
						'Option.id' => $this->id 
				),
				'recursive' => - 1,
				'callbacks' => false 
		) );
		
		$this->hasMany ['PurchaseItem'] ['conditions'] = array (
				'PurchaseItem.og_shelf_id' => $option ['Option'] ['option_value'] 
		);
		
		return $queryData;
	}
}
			