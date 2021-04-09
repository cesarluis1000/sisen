<h1>Cooperativa San Francisco</h1>
<fieldset>
	<legend><?php echo __('Encuestado'); ?></legend>

	<dl class="dl-horizontal">
		<dt><?php echo __('Nombres'); ?></dt>
		<dd>
			<?php echo $encuestado; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Dni'); ?></dt>
		<dd>
			<?php echo $dni; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Encuesta'); ?></dt>
		<dd>
			<?php echo $encuesta; ?>
			&nbsp;
		</dd>
	</dl>
</fieldset>
<p>Click para realizar la encuesta <a href="<?php echo Router::url('/Respuestas/add/'.$encuestaId, true);?>">Aquí</a></p>