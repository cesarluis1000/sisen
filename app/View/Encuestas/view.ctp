<h2><?php echo __('Encuesta'); ?></h2>
	<dl class="dl-horizontal">
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nombre'); ?></dt>
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
		<dt><?php echo __('Enlace Zoom'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['enlace_zoom']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Estado'); ?></dt>
		<dd class="estado">
			<?php echo h($a_estados[$encuesta['Encuesta']['estado']]); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creador'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['creador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creado'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['creado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificador'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['modificador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificado'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['modificado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Acciones'); ?></dt>
		<dd>
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon glyphicon-object-align-bottom')).__(' Grafico'), 
			    array('action' => 'grafico', $encuesta['Encuesta']['id']),array('class' => 'btn btn-default btn-xs','escape'=>false)); ?>
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-edit')).__(' Editar'), 
			    array('action' => 'edit', $encuesta['Encuesta']['id']),array('class' => 'btn btn-warning btn-xs','escape'=>false)); ?>
			<?php echo ($encuesta['Encuesta']['estado'] == 'A')?$this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-facetime-video')).__(' Correo'), 
			    array('action' => 'correos_video', $encuesta['Encuesta']['id']),array('class' => 'btn btn-primary btn-xs','escape'=>false)):''; ?>
		</dd>
	</dl>

<h3><?php echo __('Preguntas'); ?></h3>
<div class="row">
     <div class="col-md-12 text-right">
    		<?php echo ($encuesta['Encuesta']['estado'] == 'A')?$this->Html->link($this->Html->tag('span','', array('class' => 'glyphicon glyphicon-file')).__(' Nuevo'),
    		    array('controller' => 'Preguntas', 'action' => 'add',$encuesta['Encuesta']['id']),array('class' => 'btn btn-success btn-xs','escape'=>false)):''; ?>
    </div>
</div>

<br>

<div class="table-responsive">
<table class="table table-hover table-condensed">
	<thead>
	<tr>
			<th><?php echo 'id'; ?></th>
			<th><?php echo 'nombre'; ?></th>
			<th><?php echo 'Nro Respuesta'; ?></th>
			<th><?php echo 'estado'; ?></th>
			<th><?php echo 'creador'; ?></th>
			<th><?php echo 'creado'; ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<tbody>
	<?php foreach ($preguntas as $pregunta): ?>
	<tr>
		<td><?php echo h($pregunta['Pregunta']['id']); ?>&nbsp;</td>
		<td><?php echo h($pregunta['Pregunta']['nombre']); ?>&nbsp;</td>
		<td><?php echo h($a_nro_respuesta[$pregunta['Pregunta']['nro_respuesta']]); ?>&nbsp;</td>
		<td><?php echo h($a_estados[$pregunta['Pregunta']['estado']]); ?>&nbsp;</td>
		<td><?php echo h($pregunta['Pregunta']['creador']); ?>&nbsp;</td>
		<td><?php echo h($pregunta['Pregunta']['creado']); ?>&nbsp;</td>
		<td class="actions">
			<div <?php echo ($encuesta['Encuesta']['estado'] == 'A')?"":"class='hide'";?> >
    			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-eye-open')), array('controller' => 'Preguntas', 'action' => 'view', $pregunta['Pregunta']['id']),array('class' => 'btn btn-info btn-xs','escape'=>false)); ?>
    			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-edit')), array('controller' => 'Preguntas', 'action' => 'edit', $pregunta['Pregunta']['id']),array('class' => 'btn btn-warning btn-xs','escape'=>false)); ?>
    			<?php echo $this->Form->postLink($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-trash')), array('controller' => 'Preguntas', 'action' => 'delete', $pregunta['Pregunta']['id']),array('class' => 'btn btn-danger btn-xs','escape'=>false), __('Are you sure you want to delete # %s?', $pregunta['Pregunta']['id'])); ?>
			</div>
		</td>
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>	
</div>

<h3><?php echo __('Encuestados'); ?></h3>
<div class="row">
     <div class="col-md-12 text-right">
			<div <?php echo ($encuesta['Encuesta']['estado'] == 'A')?"":"class='hide'";?> >
        		<?php echo $this->Html->link($this->Html->tag('span','', array('class' => 'glyphicon glyphicon-envelope')).__(' Enviar'),
        		    array('controller' => 'Encuestados', 'action' => 'correos',$encuesta['Encuesta']['id']),array('class' => 'btn btn-primary btn-xs','escape'=>false)); ?>
        		<?php echo $this->Html->link($this->Html->tag('span','', array('class' => 'fa fa-table')).__(' Nuevo'),
        		    array('controller' => 'Encuestados', 'action' => 'add_list',$encuesta['Encuesta']['id']),array('class' => 'btn btn-default btn-xs','escape'=>false)); ?>
        		<?php echo $this->Html->link($this->Html->tag('span','', array('class' => 'glyphicon glyphicon-file')).__(' Nuevo'),
        		    array('controller' => 'Encuestados', 'action' => 'add',$encuesta['Encuesta']['id']),array('class' => 'btn btn-success btn-xs','escape'=>false)); ?>
    		</div>
    </div>
</div>

<br>

<div class="table-responsive">
<table class="table table-hover table-condensed">
	<thead>
	<tr>
			<th><?php echo 'id'; ?></th>
			<th><?php echo 'nombre'; ?></th>
			<th><?php echo 'app'; ?></th>
			<th><?php echo 'apm'; ?></th>
			<th><?php echo 'telefono'; ?></th>
			<th><?php echo 'correo'; ?></th>
			<th><?php echo 'dni'; ?></th>
			<th><?php echo 'enviado'; ?></th>
			<th><?php echo 'estado'; ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php foreach ($encuestados as $encuestado): ?>
	<tr>
		<td><?php echo h($encuestado['Encuestado']['id']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['nombres']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['app']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['apm']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['telefono']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['correo']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['dni']); ?>&nbsp;</td>
		<td><?php echo h($a_correo_enviado[$encuestado['Encuestado']['correo_enviado']]); ?>&nbsp;</td>
		<td><?php echo h($a_estados_encuestado[$encuestado['Encuestado']['estado']]); ?>&nbsp;</td>
		<td class="actions">
			<div <?php echo ($encuesta['Encuesta']['estado'] == 'A')?"":"class='hide'";?> >
    			<?php echo (in_array($encuestado['Encuestado']['estado'],array('A','B')))?$this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-list')), array('controller' => 'Respuestas', 'action' => 'add', $encuestado['Encuestado']['id']),array('class' => 'btn btn-default btn-xs','escape'=>false)):''; ?>
    			<?php echo ($encuestado['Encuestado']['estado'] == 'E')?$this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-eye-open')), array('controller' => 'Encuestados', 'action' => 'view', $encuestado['Encuestado']['id']),array('class' => 'btn btn-info btn-xs','escape'=>false)):''; ?>
    			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-edit')), array('controller' => 'Encuestados', 'action' => 'edit', $encuestado['Encuestado']['id']),array('class' => 'btn btn-warning btn-xs','escape'=>false)); ?>
    			<?php echo $this->Form->postLink($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-trash')), array('controller' => 'Encuestados', 'action' => 'delete', $encuestado['Encuestado']['id']),array('class' => 'btn btn-danger btn-xs','escape'=>false), __('Are you sure you want to delete # %s?', $encuestado['Encuestado']['id'])); ?>
    			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-envelope')), array('controller' => 'Encuestados', 'action' => 'correo', $encuestado['Encuestado']['id']),array('class' => 'btn btn-primary btn-xs','escape'=>false)); ?>
    			<?php 
    			 $s_encuestado   = h($encuestado['Encuestado']['nombres']).' '.h($encuestado['Encuestado']['app']).' '.h($encuestado['Encuestado']['apm']);
    			 $s_dni          = h($encuestado['Encuestado']['dni']);
    			 $s_telefono     = h($encuestado['Encuestado']['telefono']);
    			 $s_encuesta     = h($encuestado['Encuesta']['nombre']);
    			 $enlace         = Router::url('/Respuestas/encuestar/'.$encuestado['Encuestado']['hash'], true);
    			?>
    			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'fa fa-whatsapp')), 
    			    "https://wa.me/51{$s_telefono}/?text=*Cooperativa San Francisco* %0a*Nombres:* {$s_encuestado} %0a*Dni:* {$s_dni} %0a*Encuesta:* {$s_encuesta} %0a*Click para realizar la encuesta:* %0a{$enlace}",
    			    array('class' => 'btn btn-success btn-xs','target'=>'_blank','escape'=>false)); ?>
    			<?php 
    			$logon_video = Router::url('/Encuestas/login_video/'.$encuesta['Encuesta']['hash'], true); 
    			?>
    			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-facetime-video')), 
    			    "https://wa.me/51{$s_telefono}/?text=*Cooperativa San Francisco* %0a*Nombres:* {$s_encuestado} %0a*Dni:* {$s_dni} %0a*Encuesta:* {$s_encuesta} %0a*Click para ingresar al video llamada:* %0a{$logon_video}",
    			    array('class' => 'btn btn-success btn-xs','target'=>'_blank','escape'=>false)); ?>
    		</div>
		</td>
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>	
</div>
