<h2><?php echo __('Pregunta'); ?></h2>
	<dl class="dl-horizontal">
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nombre'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['nombre']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nro Respuesta'); ?></dt>
		<dd>
			<?php echo h($a_nro_respuesta[$pregunta['Pregunta']['nro_respuesta']]); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Encuesta'); ?></dt>
		<dd>
			<?php echo $this->Html->link($pregunta['Encuesta']['nombre'], array('controller' => 'encuestas', 'action' => 'view', $pregunta['Encuesta']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Estado'); ?></dt>
		<dd>
			<?php echo h($a_estados[$pregunta['Pregunta']['estado']]); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creador'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['creador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creado'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['creado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificador'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['modificador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificado'); ?></dt>
		<dd>
			<?php echo h($pregunta['Pregunta']['modificado']); ?>
			&nbsp;
		</dd>
	</dl>

<h3><?php echo __('Opciones'); ?></h3>

<div class="row">
     <div class="col-md-12 text-right">
    		<?php echo $this->Html->link($this->Html->tag('span','', array('class' => 'glyphicon glyphicon-file')).__(' Nuevo'),
    		    array('controller' => 'Opciones', 'action' => 'add',$pregunta['Pregunta']['id']),array('class' => 'btn btn-success btn-xs','escape'=>false)); ?>
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
	</thead>
	<tbody>
	<?php foreach ($opciones as $opcion): ?>
	<tr>
		<td><?php echo h($opcion['Opcion']['id']); ?>&nbsp;</td>
		<td><?php echo h($opcion['Opcion']['nombre']); ?>&nbsp;</td>
		<td><?php echo h($a_estados[$opcion['Opcion']['estado']]); ?>&nbsp;</td>
		<td><?php echo h($opcion['Opcion']['creador']); ?>&nbsp;</td>
		<td><?php echo h($opcion['Opcion']['creado']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-eye-open')), array('controller' => 'Opciones', 'action' => 'view', $opcion['Opcion']['id']),array('class' => 'btn btn-info btn-xs','escape'=>false)); ?>
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-edit')), array('controller' => 'Opciones', 'action' => 'edit', $opcion['Opcion']['id']),array('class' => 'btn btn-warning btn-xs','escape'=>false)); ?>
			<?php echo $this->Form->postLink($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-trash')), array('controller' => 'Opciones', 'action' => 'delete', $opcion['Opcion']['id']),array('class' => 'btn btn-danger btn-xs','escape'=>false), __('Are you sure you want to delete # %s?', $opcion['Opcion']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>	
</div>	