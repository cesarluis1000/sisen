	
<h3><?php echo $encuesta['Encuesta']['nombre'] ?></h3>	
<br>
<br>
		
<?php foreach ($preguntas as $i => $pregunta): ?>
	
    <div class="col-md-6">
    	<div style="width:95%;">
    		<canvas id="<?php echo 'pregunta'.$i; ?>"></canvas>
    	</div>        	
    </div>

    <script>
    var ctx = document.getElementById('<?php echo 'pregunta'.$i; ?>').getContext('2d');
    var myChart = new Chart(ctx, <?php echo json_encode($pregunta['config']); ?>);
    </script>
	
<?php endforeach;?>

