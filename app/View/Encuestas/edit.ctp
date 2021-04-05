<fieldset>
	<legend><?php echo __('Edit Encuesta'); ?></legend>
	<?php echo $this->Form->create('Encuesta', array('class' => 'form-horizontal',
		'inputDefaults'=>array('div' => array('class' => 'form-group'),'between' => '<div class="col-sm-6">','after' => '</div>','class'=>'form-control input-xs','error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))))); ?>
		<?php
		echo $this->Form->input('id',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('nombre',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('fecha_inicio',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('fecha_fin',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('enlace_zoom',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('estado',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('creador',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('creado',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('modificador',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('modificado',array('label'=>array('class'=>'control-label col-sm-2')));
	?>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
					<?php echo $this->Form->button('Guardar', array('type' => 'submit','class'=>'btn btn-success'));  ?>
		</div>
	</div>
		<?php echo $this->Form->end(); ?>
</fieldset>