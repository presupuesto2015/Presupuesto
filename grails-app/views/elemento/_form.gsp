<%@ page import="presupuesto.Elemento" %>



<div class="form-group ${hasErrors(bean: elementoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="elemento.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="30" value="${elementoInstance?.descripcion}"/>
</div>

<div class="form-group ${hasErrors(bean: elementoInstance, field: 'prioridad', 'error')} ">
	<label for="prioridad">
		<g:message code="elemento.prioridad.label" default="Prioridad" />
		
	</label>
	<g:textField name="prioridad" maxlength="30" value="${elementoInstance?.prioridad}"/>
</div>

<div class="form-group ${hasErrors(bean: elementoInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="elemento.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" value="${fieldValue(bean: elementoInstance, field: 'precio')}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: elementoInstance, field: 'cantidad', 'error')} required">
	<label for="cantidad">
		<g:message code="elemento.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidad" type="number" value="${elementoInstance.cantidad}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: elementoInstance, field: 'rubros', 'error')} required">
	<label for="rubros">
		<g:message code="elemento.rubros.label" default="Rubros" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rubros" name="rubros.id" from="${presupuesto.Rubro.list()}" optionKey="id" required="" value="${elementoInstance?.rubros?.id}" class="many-to-one"/>
</div>

