<fieldset>
	<legend><?php echo __('Add Note'); ?></legend>
	<?php echo $this->Form->create('Note', array('class' => 'form-horizontal',
		'inputDefaults'=>array('div' => array('class' => 'form-group'),'between' => '<div class="col-sm-6">','after' => '</div>','class'=>'form-control input-xs','error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))))); ?>
		<?php
		echo $this->Form->input('title',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('note',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('color',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('date',array('label'=>array('class'=>'control-label col-sm-2'),'type' => 'text','placeholder'=>'YYYY-MM-DD HH:mm:ss'));
	?>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
					<?php echo $this->Form->button('Guardar', array('type' => 'submit','class'=>'btn btn-success'));  ?>
		</div>
	</div>
		<?php echo $this->Form->end(); ?>
</fieldset>