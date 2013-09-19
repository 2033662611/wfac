<?php
App::uses ( 'AppModel', 'Model' );
class Process extends AppModel {
	public $displayField = 'id';
	public $belongsTo = array (
			'OgProcessName' => array (
					'className' => 'Option',
					'foreignKey' => false,
					'conditions' => array (
							"Process.og_process_name_id = OgProcessName.option_value",
							"OgProcessName.option_group_id = (SELECT id FROM option_groups WHERE name='og_process_names')" 
					) 
			),
			'Operator' => array (
					'className' => 'User',
					'foreignKey' => 'operator_id' 
			),
			'SalesPart',
			'OgStatus' => array (
					'className' => 'Option',
					'foreignKey' => false,
					'conditions' => array (
							"Process.og_status_id = OgStatus.option_value",
							"OgStatus.option_group_id = (SELECT id FROM option_groups WHERE name='og_statuses')" 
					) 
			) 
	);
}
			