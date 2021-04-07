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
			<?php echo h($encuesta['Encuesta']['fecha_inicio']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Fecha Fin'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['fecha_fin']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Enlace Zoom'); ?></dt>
		<dd>
			<?php echo h($encuesta['Encuesta']['enlace_zoom']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Estado'); ?></dt>
		<dd>
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
	</dl>

<h3><?php echo __('Preguntas'); ?></h3>
<div class="row">
     <div class="col-md-12 text-right">
    		<?php echo $this->Html->link($this->Html->tag('span','', array('class' => 'glyphicon glyphicon-file')).__(' Nuevo'),
    		    array('controller' => 'Preguntas', 'action' => 'add',$encuesta['Encuesta']['id']),array('class' => 'btn btn-success btn-xs','escape'=>false)); ?>
    </div>
</div>

<br>

<div class="table-responsive">
<table class="table table-hover table-condensed">
	<thead>
	<tr>
			<th><?php echo 'id'; ?></th>
			<th><?php echo 'nombre'; ?></th>
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
		<td><?php echo h($a_estados[$pregunta['Pregunta']['estado']]); ?>&nbsp;</td>
		<td><?php echo h($pregunta['Pregunta']['creador']); ?>&nbsp;</td>
		<td><?php echo h($pregunta['Pregunta']['creado']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-eye-open')), array('controller' => 'Preguntas', 'action' => 'view', $pregunta['Pregunta']['id']),array('class' => 'btn btn-info btn-xs','escape'=>false)); ?>
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-edit')), array('controller' => 'Preguntas', 'action' => 'edit', $pregunta['Pregunta']['id']),array('class' => 'btn btn-warning btn-xs','escape'=>false)); ?>
			<?php echo $this->Form->postLink($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-trash')), array('controller' => 'Preguntas', 'action' => 'delete', $pregunta['Pregunta']['id']),array('class' => 'btn btn-danger btn-xs','escape'=>false), __('Are you sure you want to delete # %s?', $pregunta['Pregunta']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>	
</div>

<h3><?php echo __('Encuestados'); ?></h3>
<div class="row">
     <div class="col-md-12 text-right">
    		<?php echo $this->Html->link($this->Html->tag('span','', array('class' => 'glyphicon glyphicon-file')).__(' Nuevo'),
    		    array('controller' => 'Encuestados', 'action' => 'add',$encuesta['Encuesta']['id']),array('class' => 'btn btn-success btn-xs','escape'=>false)); ?>
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
			<th><?php echo 'correo'; ?></th>
			<th><?php echo 'estado'; ?></th>
			<th><?php echo 'creador'; ?></th>
			<th><?php echo 'creado'; ?></th>
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
		<td><?php echo h($encuestado['Encuestado']['correo']); ?>&nbsp;</td>
		<td><?php echo h($a_estados[$encuestado['Encuestado']['estado']]); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['creador']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['creado']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-th-list')), array('controller' => 'Respuestas', 'action' => 'add', $encuestado['Encuestado']['id']),array('class' => 'btn btn-success btn-xs','escape'=>false)); ?>
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-eye-open')), array('controller' => 'Encuestados', 'action' => 'view', $encuestado['Encuestado']['id']),array('class' => 'btn btn-info btn-xs','escape'=>false)); ?>
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-edit')), array('controller' => 'Encuestados', 'action' => 'edit', $encuestado['Encuestado']['id']),array('class' => 'btn btn-warning btn-xs','escape'=>false)); ?>
			<?php echo $this->Form->postLink($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-trash')), array('controller' => 'Encuestados', 'action' => 'delete', $encuestado['Encuestado']['id']),array('class' => 'btn btn-danger btn-xs','escape'=>false), __('Are you sure you want to delete # %s?', $encuestado['Encuestado']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>	
</div>