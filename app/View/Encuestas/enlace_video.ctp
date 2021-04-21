<fieldset>
	<legend>Ingresar a Video</legend>

	<dl class="dl-horizontal">
		<dt><?php echo __('Encuesta'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['nombre']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Fecha Inicio'); ?></dt>
		<dd>
			<?php echo date("Y-m-d g:i a", strtotime($encuesta['Encuesta']['fecha_inicio'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Fecha Fin'); ?></dt>
		<dd>
			<?php echo date("Y-m-d g:i a", strtotime($encuesta['Encuesta']['fecha_fin'])); ?>
			&nbsp;
		</dd>
		
		<dt><?php echo __('Enlace de Video'); ?></dt>
		<dd>
            <?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-facetime-video')).__(' Click Aquí'), 
                trim($encuesta['Encuesta']['enlace_zoom']) ,array('class' => 'btn btn-primary','escape'=>false)); ?>
		</dd>
	</dl>
</fieldset>