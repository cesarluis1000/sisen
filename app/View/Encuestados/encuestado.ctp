<style>
<!--
label {
    font-weight: normal !important;
}
.Preguntalista li {
    font-size: 14px;
    font-weight: bold;	
}
.opcionlista {
	padding-left: 10px;
}
.opcionlista li {
    list-style: none;
}
-->
</style>
<fieldset>
	<legend><?php echo __('Gracias por Participar'); ?></legend>

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
			<b><?php echo h($encuestado['Encuesta']['nombre']); ?></b>
			&nbsp;
		</dd>
		<dt><?php echo __('Fecha Inicio'); ?></dt>
		<dd>
			<?php echo date("Y-m-d g:i a", strtotime($encuestado['Encuesta']['fecha_inicio'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Fecha Fin'); ?></dt>
		<dd>
			<?php echo date("Y-m-d g:i a", strtotime($encuestado['Encuesta']['fecha_fin'])); ?>
			&nbsp;
		</dd>
	</dl>
</fieldset>