<h2><?php echo __('Pregunta'); ?></h2>
	<dl class="dl-horizontal">
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nombre'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['nombre']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Encuesta'); ?></dt>
		<dd>
			<?php echo $this->Html->link($pregunta['Encuesta']['nombre'], array('controller' => 'encuestas', 'action' => 'view', $pregunta['Encuesta']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Estado'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['estado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creador'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['creador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creado'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['creado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificador'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['modificador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificado'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['modificado']); ?>
			&nbsp;
		</dd>
	</dl>
