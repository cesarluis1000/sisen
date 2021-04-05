<h2><?php echo __('Encuestados'); ?></h2>

<!-- Buscador -->
<div class="row">
	<div class="col-md-10">
			<?php echo $this->Form->create('Encuestado', array('type' => 'get','url' => 'index','class' => 'form-inline','inputDefaults'=>array('div' => array('class' => 'form-group'),'class'=>'form-control input-xs'))); ?>	
			<?php echo $this->Form->input($campo,array('required' => false,'label'=>false)); ?>
			<?php echo $this->Form->button('Buscar', array('type' => 'submit','class'=>'btn btn-primary btn-xs'));  ?>
			<?php echo $this->Form->button('Limpiar', array('type' => 'reset','class'=>'btn btn-primary btn-xs'));  ?>		
			<?php echo $this->Form->end(); ?>	
     </div>
     <div class="col-md-2 text-right">
    		<?php echo $this->Html->link($this->Html->tag('span','', array('class' => 'glyphicon glyphicon-file')).__(' Nuevo'),array('action' => 'add'),array('class' => 'btn btn-success btn-xs','escape'=>false)); ?>
    </div>
</div>

<!-- Paginador y boton Nuevo -->
<?php $this->Paginator->options['url']['?'] = $this->params['url']; ?>
<div class="row text-right">
    <div class="col-md-12">
        <nav aria-label="Page navigation">
            <ul class="pagination pagination-sm">
				<?php
					echo $this->Paginator->prev('< ' . __('prev'), array('tag' => 'li'), null, array('tag' => 'li','class' => 'disabled','disabledTag' => 'a'));
					echo $this->Paginator->numbers(array('separator' => '','tag' => 'li','currentTag' => 'a', 'currentClass' => 'active','first' => 1));
					echo $this->Paginator->next(__('next') . ' >', array('tag' => 'li','currentClass' => 'disabled'), null, array('tag' => 'li','class' => 'disabled','disabledTag' => 'a'));
				?>
            </ul>
        </nav>
    </div>        
</div>

<!-- Contenido de los registros y las acciones -->
<div class="table-responsive">
<table class="table table-hover table-condensed">
	<thead>
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('nombres'); ?></th>
			<th><?php echo $this->Paginator->sort('app'); ?></th>
			<th><?php echo $this->Paginator->sort('apm'); ?></th>
			<th><?php echo $this->Paginator->sort('dni'); ?></th>
			<th><?php echo $this->Paginator->sort('correo'); ?></th>
			<th><?php echo $this->Paginator->sort('password'); ?></th>
			<th><?php echo $this->Paginator->sort('hash'); ?></th>
			<th><?php echo $this->Paginator->sort('encuesta_id'); ?></th>
			<th><?php echo $this->Paginator->sort('estado'); ?></th>
			<th><?php echo $this->Paginator->sort('creador'); ?></th>
			<th><?php echo $this->Paginator->sort('creado'); ?></th>
			<th><?php echo $this->Paginator->sort('modificador'); ?></th>
			<th><?php echo $this->Paginator->sort('modificado'); ?></th>
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
		<td><?php echo h($encuestado['Encuestado']['dni']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['correo']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['password']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['hash']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($encuestado['Encuesta']['nombre'], array('controller' => 'encuestas', 'action' => 'view', $encuestado['Encuesta']['id'])); ?>
		</td>
		<td><?php echo h($encuestado['Encuestado']['estado']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['creador']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['creado']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['modificador']); ?>&nbsp;</td>
		<td><?php echo h($encuestado['Encuestado']['modificado']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-eye-open')), array('action' => 'view', $encuestado['Encuestado']['id']),array('class' => 'btn btn-info btn-xs','escape'=>false)); ?>
			<?php echo $this->Html->link($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-edit')), array('action' => 'edit', $encuestado['Encuestado']['id']),array('class' => 'btn btn-warning btn-xs','escape'=>false)); ?>
			<?php echo $this->Form->postLink($this->Html->tag('span', '', array('class' => 'glyphicon glyphicon-trash')), array('action' => 'delete', $encuestado['Encuestado']['id']),array('class' => 'btn btn-danger btn-xs','escape'=>false), __('Are you sure you want to delete # %s?', $encuestado['Encuestado']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>	
</div>