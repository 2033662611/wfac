<?php
App::uses ( 'AppModel', 'Model' );
class PurchaseItem extends AppModel {
	public $displayField = 'id';
	public $validate = array (
			'name' => 'notempty',
			'unit_price' => array (
					'rule' => array (
							'decimal',
							2 
					) 
			),
			'quantity' => 'naturalNumber', // greater than zero
			'unit' => 'notempty' 
	);
	public $belongsTo = array (
			'PurchaseOrder',
			'OgShelf' => array (
					'className' => 'Option',
					'foreignKey' => false,
					'conditions' => array (
							"PurchaseItem.og_shelf_id = OgShelf.option_value",
							"OgShelf.option_group_id = (SELECT id FROM option_groups WHERE name='og_shelves')" 
					) 
			) 
	);
}
			