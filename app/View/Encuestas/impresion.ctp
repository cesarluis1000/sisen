<style>
<!--
@media print {
  #btnPrint {
      display: none;
  }
  #header {
    text-align: center;
    width: 100%;
  }
}

.responsive {
  width: 300px;
}
-->
</style>
<div id="header">		
	<?php    	
	echo $this->Html->image('banner2.png', ['alt' => 'banner', 'class' => 'responsive'])
	?>
</div>
<br>
<h3><?php echo $encuesta['Encuesta']['nombre'] ?></h3>	
<br>
<?php
echo $this->Form->button(
        $this->Html->tag('span', '', array('class' => 'fa fa-print')).__(' Imprimir'), 
    array('type' => 'button','id'=>'btnPrint','class'=>'btn btn-default','onclick' => 'window.print()')
    );
?>
<br>
<?php foreach ($preguntas as $i => $pregunta): ?>
	
    <div class="col-md-7">
    	<div style="width:95%;">
    		<canvas id="<?php echo 'pregunta'.$i; ?>"></canvas>
    	</div>        	
    </div>

    <script>
    var ctx = document.getElementById('<?php echo 'pregunta'.$i; ?>').getContext('2d');
    var myChart = new Chart(ctx, <?php echo json_encode($pregunta['config']); ?>);
    </script>
	
<?php endforeach;?>