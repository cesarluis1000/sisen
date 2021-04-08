<fieldset>
	<legend><?php echo __('Nuevo Encuestado'); ?></legend>
	<?php echo $this->Form->create('Encuestado', array('class' => 'form-horizontal',
		'inputDefaults'=>array('div' => array('class' => 'form-group'),'between' => '<div class="col-sm-6">','after' => '</div>','class'=>'form-control input-xs','error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))))); ?>
		<?php
		echo $this->Form->input('nombres',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('app',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('apm',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('dni',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('telefono',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('correo',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('encuesta_id',array('label'=>array('class'=>'control-label col-sm-2'),'empty' => 'Seleccionar','selected' => $encuestaId));
		echo $this->Form->input('estado',array('label'=>array('class'=>'control-label col-sm-2'),'options'=> $a_estados,'empty' => 'Seleccionar'));
	?>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
					<?php echo $this->Form->button('Guardar', array('type' => 'submit','class'=>'btn btn-success'));  ?>
		</div>
	</div>
		<?php echo $this->Form->end(); ?>
</fieldset>