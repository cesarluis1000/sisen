<h2><?php echo __('Respuesta'); ?></h2>
	<dl class="dl-horizontal">
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($respuesta['Respuesta']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Opcion'); ?></dt>
		<dd>
			<?php echo $this->Html->link($respuesta['Opcion']['nombre'], array('controller' => 'opciones', 'action' => 'view', $respuesta['Opcion']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Encuestado'); ?></dt>
		<dd>
			<?php echo $this->Html->link($respuesta['Encuestado']['app'], array('controller' => 'encuestados', 'action' => 'view', $respuesta['Encuestado']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Estado'); ?></dt>
		<dd>
			<?php echo h($respuesta['Respuesta']['estado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creador'); ?></dt>
		<dd>
			<?php echo h($respuesta['Respuesta']['creador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creado'); ?></dt>
		<dd>
			<?php echo h($respuesta['Respuesta']['creado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificador'); ?></dt>
		<dd>
			<?php echo h($respuesta['Respuesta']['modificador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificado'); ?></dt>
		<dd>
			<?php echo h($respuesta['Respuesta']['modificado']); ?>
			&nbsp;
		</dd>
	</dl>
