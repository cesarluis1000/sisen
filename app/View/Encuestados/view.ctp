<h2><?php echo __('Encuestado'); ?></h2>
	<dl class="dl-horizontal">
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nombres'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['nombres']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('App'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['app']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Apm'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['apm']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Dni'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['dni']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Correo'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['correo']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Password'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['password']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Hash'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['hash']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Encuesta'); ?></dt>
		<dd>
			<?php echo $this->Html->link($encuestado['Encuesta']['nombre'], array('controller' => 'encuestas', 'action' => 'view', $encuestado['Encuesta']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Estado'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['estado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creador'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['creador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creado'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['creado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificador'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['modificador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificado'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['modificado']); ?>
			&nbsp;
		</dd>
	</dl>
