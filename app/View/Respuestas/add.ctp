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
	
	
	<?php echo $this->Form->create('Respuesta', array('class' => 'form-horizontal',
		'inputDefaults'=>array('div' => array('class' => 'form-group'),'between' => '<div class="col-sm-6">','after' => '</div>','class'=>'form-control input-xs','error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))))); ?>
	<?php
		echo $this->Form->input('encuestado_id',array('type' => 'hidden','value'=>$encuestado['Encuestado']['id']));
		//echo $this->Form->input('opcion_id',array('label'=>array('class'=>'control-label col-sm-2')));
		//echo $this->Form->input('estado',array('label'=>array('class'=>'control-label col-sm-2'),'options'=> $a_estados,'empty' => 'Seleccionar'));
	?>
	
	<ol class="Preguntalista">
	<?php foreach ($preguntas as $pregunta): ?>
		<li>
			<?php echo h($pregunta['Pregunta']['nombre']); ?>
			<?php if (!empty($pregunta['Opcion'])): ?>
    			<ol class="opcionlista">
    				<?php foreach ($pregunta['Opcion'] as $opcion): ?>
                      	<li>
                      		<input type="radio" class="form-check-input" name="data[<?php echo $pregunta['Pregunta']['id'] ?>][Opcion][id]"  value="<?php echo $opcion['id'] ?>" id="PreguntaId<?php echo $opcion['id'] ?>">
                      		<label for="PreguntaId<?php echo $opcion['id'] ?>"><?php echo $opcion['nombre'] ?></label>
                      	</li>
    				<?php endforeach; ?>
                </ol>	
			<?php endif; ?>
		</li>
	<?php endforeach; ?>
	</ol>
	
	<div class="form-group">
		<div class="col-sm-12">
					<?php echo $this->Form->button('Votar', array('type' => 'submit','class'=>'btn btn-success'));  ?>
		</div>
	</div>
		<?php echo $this->Form->end(); ?>
</fieldset>