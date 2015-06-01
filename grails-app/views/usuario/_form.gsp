<%@ page import="presupuesto.Usuario" %>



<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="30" value="${usuarioInstance?.nombre}"/>
</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="usuario.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cedula" type="number" value="${usuarioInstance.cedula}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="usuario.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${usuarioInstance.telefono}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		
	</label>
	<g:textField name="email" maxlength="30" value="${usuarioInstance?.email}"/>
</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'cargo', 'error')} ">
	<label for="cargo">
		<g:message code="usuario.cargo.label" default="Cargo" />
		
	</label>
	<g:textField name="cargo" maxlength="30" value="${usuarioInstance?.cargo}"/>
</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'fecha', 'error')} ">
	<label for="fecha">
		<g:message code="usuario.fecha.label" default="Fecha" />
		
	</label>
	<g:datePicker name="fecha" precision="day"  value="${usuarioInstance?.fecha}" default="none" noSelection="['': '']" />
</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'departamentos', 'error')} required">
	<label for="departamentos">
		<g:message code="usuario.departamentos.label" default="Departamentos" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="departamentos" name="departamentos.id" from="${presupuesto.Departamento.list()}" optionKey="id" required="" value="${usuarioInstance?.departamentos?.id}" class="many-to-one"/>
</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'rubros', 'error')} ">
	<label for="rubros">
		<g:message code="usuario.rubros.label" default="Rubros" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioInstance?.rubros?}" var="r">
    <li><g:link controller="rubro" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rubro" action="create" params="['usuario.id': usuarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rubro.label', default: 'Rubro')])}</g:link>
</li>
</ul>

</div>

