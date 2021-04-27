<script src="https://www.google.com/recaptcha/api.js?render=<?php echo Configure::read('Recaptcha.SiteKey'); ?>"></script>

   <script>
    $(document).ready(function() {
        $('#btLoginVideo').click(function(){
       	 	grecaptcha.ready(function() {
                 grecaptcha.execute('<?php echo Configure::read('Recaptcha.SiteKey'); ?>', {
                     action: 'validarUsuario'
                 }).then(function(token) {
               	  $('#EncuestadoToken').val(token);
                     $('#EncuestadoLoginVideoForm').submit();
                 });
           });
        });
    });
  </script>
  
<section class="outer-wrapper">
  <div class="inner-wrapper">
		<div class="col-sm-4 col-sm-offset-4">
			<fieldset>
				<legend><?php echo __('Login Video'); ?></legend>
				<?php echo $this->Form->create('Encuestado', array('class' => 'form-horizontal',
					'inputDefaults'=>array('div' => array('class' => 'form-group'),'between' => '<div>','after' => '</div>','class'=>'form-control input-xs','error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))))); ?>
					<?php
                    echo $this->Form->input('token',array('type' => 'hidden')); 
					echo $this->Form->input('Encuesta.hash',array('type' => 'hidden','value'=>$hash));
					echo $this->Form->input('telefono',array('label'=>array('class'=>'control-label'),'placeholder'=>'Telefono'));
					echo $this->Form->input('password',array('label'=>array('class'=>'control-label'),'placeholder'=>'Password'));
				?>
				<div class="form-group">
					<div class="text-left">
						<?php echo $this->Form->button('Login', array('id' => 'btLoginVideo','type' => 'button','class'=>'btn btn-success'));  ?>
					</div>
				</div>
					<?php echo $this->Form->end(); ?>
			</fieldset>
		</div>
	</div>
</section>