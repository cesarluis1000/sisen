<fieldset>
	<legend><?php echo __('Encuestado'); ?></legend>

	<dl class="dl-horizontal">
		<dt><?php echo __('Nombres'); ?></dt>
		<dd>
			<?php echo h($encuestado['Encuestado']['nombres']).' '.h($encuestado['Encuestado']['app']).' '.h($encuestado['Encuestado']['apm']); ?>
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
		<dt><?php echo __('Encuesta'); ?></dt>
		<dd>
			<?php echo $this->Html->link($encuestado['Encuesta']['nombre'], array('controller' => 'encuestas', 'action' => 'view', $encuestado['Encuesta']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</fieldset>