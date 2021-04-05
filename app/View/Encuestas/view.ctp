<h2><?php echo __('Encuesta'); ?></h2>
	<dl class="dl-horizontal">
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nombre'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['nombre']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Fecha Inicio'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['fecha_inicio']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Fecha Fin'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['fecha_fin']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Enlace Zoom'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['enlace_zoom']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Estado'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['estado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creador'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['creador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creado'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['creado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificador'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['modificador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificado'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['modificado']); ?>
			&nbsp;
		</dd>
	</dl>
