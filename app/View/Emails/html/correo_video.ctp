<h1>Cooperativa San Francisco</h1>
<fieldset>
	<legend><b><?php echo __('Encuestado'); ?></b></legend>

	<dl class="dl-horizontal">
		<dt><b><?php echo __('Nombres'); ?></b></dt>
		<dd>
			<?php echo $encuestado; ?>
			&nbsp;
		</dd>
		<dt><b><?php echo __('Encuesta'); ?></b></dt>
		<dd>
			<?php echo $encuesta; ?>
			&nbsp;
		</dd>
		<dt><b><?php echo __('Fecha de inicio'); ?></b></dt>
		<dd>
			<?php echo date("Y-m-d g:i a", strtotime($fecha_inicio)); ?>
			&nbsp;
		</dd>
		<dt><b><?php echo __('Termino'); ?></b></dt>
		<dd>
			<?php echo date("Y-m-d g:i a", strtotime($fecha_fin)); ?>
			&nbsp;
		</dd>
	</dl>
</fieldset>
<p>Click para Video <a href="<?php echo Router::url('/Encuestas/enlace_video/'.$encuestaId, true);?>">Aquí</a></p>