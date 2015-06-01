<%@ page import="presupuesto.Departamento" %>


<div class="form-group">
<div class="col-xs-4">
	<label for="codigo">
		<g:message code="departamento.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" maxlength="30" value="${departamentoInstance?.codigo}"/>
</div>

<div class="col-xs-4">
	<label for="nombre">
		<g:message code="departamento.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="30" value="${departamentoInstance?.nombre}"/>
</div>
</div><br><br>

<div class="form-group">
	<label for="presupuestos">
		<g:message code="departamento.presupuestos.label" default="Presupuestos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${departamentoInstance?.presupuestos?}" var="p">
    <li><g:link controller="presupuesto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="presupuesto" action="create" params="['departamento.id': departamentoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'presupuesto.label', default: 'Presupuesto')])}</g:link>
</li>
</ul>

</div>

<div class="form-group ${hasErrors(bean: departamentoInstance, field: 'rubros', 'error')} ">
	<label for="rubros">
		<g:message code="departamento.rubros.label" default="Rubros" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${departamentoInstance?.rubros?}" var="r">
    <li><g:link controller="rubro" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rubro" action="create" params="['departamento.id': departamentoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rubro.label', default: 'Rubro')])}</g:link>
</li>
</ul>

</div>

<div class="form-group ${hasErrors(bean: departamentoInstance, field: 'usuarios', 'error')} ">
	<label for="usuarios">
		<g:message code="departamento.usuarios.label" default="Usuarios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${departamentoInstance?.usuarios?}" var="u">
    <li><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="usuario" action="create" params="['departamento.id': departamentoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'usuario.label', default: 'Usuario')])}</g:link>
</li>
</ul>

</div>

