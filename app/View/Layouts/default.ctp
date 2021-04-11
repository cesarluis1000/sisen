<!DOCTYPE html>
<html>
<head>	
	<meta charset="UTF-8">
	<!-- <?php echo $this->Html->charset(); ?> -->
	<html lang="es">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>
		<?php echo "Cooperativa San Francisco"; ?>
	</title>	
	<meta name="description" content="Somos una organización sin fines de lucro que brinda servicios financieros y cooperativos a sus asociados" />
	<meta name="keywords" content="Huanuco, cooperativa, orden de pago, fondo mortuorio, credito pyme" />
	<!-- Para whatsapp -->
	<meta property="og:image" content="<?php echo $this->Html->url('/img/logo_og.png',true); ?>" />
	<meta property="og:image:type" content="image/png" />

	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->css('bootstrap.min.css');
		echo $this->Html->css('bootstrap-datetimepicker.css');
	?>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->	
	<?php echo $this->Html->script('jquery-3.2.1.min.js'); ?>	
	<?php echo $this->Html->script('Chart.min.js'); ?>
	<?php echo $this->Html->css('font-awesome.min.css'); ?>
	<?php echo $this->Html->css('elmundotec.css'); ?>
	<base href="<?php echo Router::url('/', true);?>">
</head>
<body>
	<div id="container">
	
		<div id="header" class="page-header">		
			<h1 id="titulo" class="bg-primary">
			<?php    	
        	echo $this->Html->link(
        	    $this->Html->image('banner.png', ['alt' => 'banner']),
        	    '/?n='.time(),['escapeTitle' => false, 'title' =>'sisen']
        	    );
        	?>
        	</h1>
			<?php echo $this->element('logeado'); ?>
		</div>
		
		<div id="content" class="row">
			<!-- logeado -->
			<?php if(!empty($currentUser)): ?>
				<!-- Menu -->
				<div class="col-md-2">
					<?php echo $this->element('menu'); ?>
				</div>
				<!-- Vista -->
				<div class="index col-md-10">
					<?php echo $this->Flash->render(); ?>
					<?php echo $this->fetch('content'); ?>
				</div>
			<?php else: ?>
				<!-- Vista -->
				<div class="index col-md-12">
					<?php echo $this->Flash->render(); ?>
					<?php echo $this->fetch('content'); ?>
				</div>
			<?php endif; ?>
		</div>
		<!-- 
		<div id="footer" class="alert alert-info text-right">			
			<h4>
				<?php echo '&nbsp'; ?>
			</h4>
		</div>
		 -->
	</div>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <?php echo $this->Html->script('bootstrap.min.js'); ?>
    <!-- Bootstrap datetimepicker Plugin -->
    <?php echo $this->Html->script('moment.min.js'); ?>
    <?php echo $this->Html->script('bootstrap-datetimepicker.min.js'); ?>
    <?php echo $this->Html->script('locale/es.js'); ?>
	<?php echo $this->Html->script('elmundotec.js'); ?>
</body>
</html>
