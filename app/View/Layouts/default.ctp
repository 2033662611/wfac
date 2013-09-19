<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
$cakeDescription = __d ( 'cake_dev', 'CakePHP: the rapid development php framework' );
?>
<!DOCTYPE html>
<html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeDescription ?>:
		<?php echo $title_for_layout; ?>
	</title>
	<?php
	echo $this->Html->meta ( 'icon' );
	
	echo $this->Html->css ( 'cake.generic' );
	
	echo $this->fetch ( 'meta' );
	echo $this->fetch ( 'css' );
	echo $this->fetch ( 'script' );
	?>
</head>
<body>
	<div id="container">
		<div id="header">
			
		</div>
		<div id="content">
		
			<div id="i-actions-holder">
				<div class="i-actions">
					<span>采购中心</span>
					<a href="/wfac/purchase_orders">订单列表</a>
					<a href="/wfac/purchase_orders/add">添加订单</a>
					<a href="/wfac/purchase_items">条目列表</a>
					<a href="/wfac/purchase_items/add">添加条目</a>
				</div>
	
				<div class="i-actions">
					<span>生产中心</span>
					<a href="/wfac/sales_orders">订单列表</a>
					<a href="/wfac/sales_orders/add">添加订单</a>
					<a href="/wfac/sales_items">条目列表</a>
					<a href="/wfac/sales_items/add">添加条目</a>
					<a href="/wfac/sales_parts">零件列表</a>
					<a href="/wfac/sales_parts/add">添加零件</a>
					<a href="/wfac/processes">工序列表</a>
					<a href="/wfac/processes/add">添加工序</a> 
				</div>
	
				<div class="i-actions">
					<span>领料中心</span> 
					<a href="/wfac/consume_items">条目列表</a>
					<a href="/wfac/consume_items/add">添加条目</a> 
				</div>
	
				<div class="i-actions">
					<span>开发中心</span> 
					<a href="/wfac/groups">分组列表</a>
					<a href="/wfac/groups/add">添加分组</a> 
					<a href="/wfac/users">用户列表</a>
					<a href="/wfac/users/add">添加用户</a> 
					<a href="/wfac/option_groups">选项组列表</a>
					<a href="/wfac/option_groups/add">添加选项组</a> 
					<a href="/wfac/options">选项列表</a>
					<a href="/wfac/options/add">添加选项</a> 
					<a href="/wfac/controller_files">控制层文件列表</a>
					<a href="/wfac/controller_files/add">添加控制层文件</a> 
					<a href="/wfac/model_files">模型层文件列表</a>
					<a href="/wfac/model_files/add">添加模型层文件</a> 
				</div>
			</div>

			<?php echo $this->Session->flash(); ?>

			<?php echo $this->fetch('content'); ?>
		</div>
		<div id="footer">
			<?php
			
			echo $this->Html->link ( $this->Html->image ( 'cake.power.gif', array (
					'alt' => $cakeDescription,
					'border' => '0' 
			) ), 'http://www.cakephp.org/', array (
					'target' => '_blank',
					'escape' => false 
			) );
			?>
		</div>
	</div>
	<?php echo $this->element('sql_dump'); ?>
</body>
</html>
