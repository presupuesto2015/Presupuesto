<%@ page import="presupuesto.Parametro" %>



<div class="form-group ${hasErrors(bean: parametroInstance, field: 'atributo', 'error')} ">
	<label for="atributo">
		<g:message code="parametro.atributo.label" default="Atributo" />
		
	</label>
	<g:textField name="atributo" maxlength="50" value="${parametroInstance?.atributo}"/>
</div>

<div class="form-group ${hasErrors(bean: parametroInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="parametro.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="150" value="${parametroInstance?.descripcion}"/>
</div>

<div class="form-group ${hasErrors(bean: parametroInstance, field: 'estadoParametro', 'error')} ">
	<label for="estadoParametro">
		<g:message code="parametro.estadoParametro.label" default="Estado Parametro" />
		
	</label>
	<g:textField name="estadoParametro" maxlength="1" value="${parametroInstance?.estadoParametro}"/>
</div>

<div class="form-group ${hasErrors(bean: parametroInstance, field: 'valorparametros', 'error')} ">
	<label for="valorparametros">
		<g:message code="parametro.valorparametros.label" default="Valorparametros" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${parametroInstance?.valorparametros?}" var="v">
    <li><g:link controller="valorParametro" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="valorParametro" action="create" params="['parametro.id': parametroInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'valorParametro.label', default: 'ValorParametro')])}</g:link>
</li>
</ul>

</div>

