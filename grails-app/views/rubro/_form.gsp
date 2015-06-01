<%@ page import="presupuesto.Rubro" %>



<div class="form-group ${hasErrors(bean: rubroInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="rubro.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="30" value="${rubroInstance?.nombre}"/>
</div>

<div class="form-group ${hasErrors(bean: rubroInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="rubro.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" value="${fieldValue(bean: rubroInstance, field: 'total')}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: rubroInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="rubro.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" maxlength="30" value="${rubroInstance?.codigo}"/>
</div>

<div class="form-group ${hasErrors(bean: rubroInstance, field: 'periodo', 'error')} ">
	<label for="periodo">
		<g:message code="rubro.periodo.label" default="Periodo" />
		
	</label>
	<g:datePicker name="periodo" precision="day"  value="${rubroInstance?.periodo}" default="none" noSelection="['': '']" />
</div>

<div class="form-group ${hasErrors(bean: rubroInstance, field: 'departamentos', 'error')} required">
	<label for="departamentos">
		<g:message code="rubro.departamentos.label" default="Departamentos" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="departamentos" name="departamentos.id" from="${presupuesto.Departamento.list()}" optionKey="id" required="" value="${rubroInstance?.departamentos?.id}" class="many-to-one"/>
</div>

<div class="form-group ${hasErrors(bean: rubroInstance, field: 'elementos', 'error')} ">
	<label for="elementos">
		<g:message code="rubro.elementos.label" default="Elementos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rubroInstance?.elementos?}" var="e">
    <li><g:link controller="elemento" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="elemento" action="create" params="['rubro.id': rubroInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'elemento.label', default: 'Elemento')])}</g:link>
</li>
</ul>

</div>

<div class="form-group ${hasErrors(bean: rubroInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="rubro.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${presupuesto.Usuario.list()}" optionKey="id" required="" value="${rubroInstance?.usuario?.id}" class="many-to-one"/>
</div>

