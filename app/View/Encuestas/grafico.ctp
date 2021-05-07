	
<h3><?php echo $encuesta['Encuesta']['nombre'] ?></h3>	
<br>
<?php
echo $this->Html->link(
        $this->Html->tag('span', '', array('class' => 'fa fa-print')).__(' Imprimir'), 
    array('controller' => 'Encuestas', 'action' => 'impresion', $encuesta['Encuesta']['id']), 
        array('class' => 'btn btn-default btn-sm','target' => '_blank','escape' => false)
    );
?>
<br>
<br>
<?php foreach ($preguntas as $i => $pregunta): ?>
	
    <div class="col-md-8">
    	<div style="width:95%;">
    		<canvas id="<?php echo 'pregunta'.$i; ?>"></canvas>
    	</div>        	
    </div>

    <script>
    var ctx = document.getElementById('<?php echo 'pregunta'.$i; ?>').getContext('2d');
    var myChart = new Chart(ctx, <?php echo json_encode($pregunta['config']); ?>);
    </script>
	
<?php endforeach;?>



