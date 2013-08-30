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
		if (! empty ( $this->id )) {
			$option = $this->find ( 'first', array (
					'conditions' => array (
							'Option.id' => $this->id 
					),
					'recursive' => 0,
					'callbacks' => false 
			) );
			
			if ($option ['OptionGroup'] ['name'] != 'og_shelves') {
				$this->hasMany ['PurchaseItem'] ['conditions'] = array (
						'1!=1' 
				);
			} else {
				$this->hasMany ['PurchaseItem'] ['conditions'] = array (
						'PurchaseItem.og_shelf_id' => $option ['Option'] ['option_value'] 
				);
			}
		}
		
		return $queryData;
	}
}
			