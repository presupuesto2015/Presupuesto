<%@ page import="presupuesto.ValorParametro" %>



<div class="form-group ${hasErrors(bean: valorParametroInstance, field: 'valor', 'error')} ">
	<label for="valor">
		<g:message code="valorParametro.valor.label" default="Valor" />
		
	</label>
	<g:textArea name="valor" cols="40" rows="5" maxlength="300" value="${valorParametroInstance?.valor}"/>
</div>

<div class="form-group ${hasErrors(bean: valorParametroInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="valorParametro.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="150" value="${valorParametroInstance?.descripcion}"/>
</div>

<div class="form-group ${hasErrors(bean: valorParametroInstance, field: 'orden', 'error')} ">
	<label for="orden">
		<g:message code="valorParametro.orden.label" default="Orden" />
		
	</label>
	<g:textField name="orden" maxlength="3" value="${valorParametroInstance?.orden}"/>
</div>

<div class="form-group ${hasErrors(bean: valorParametroInstance, field: 'estadoValorParametro', 'error')} ">
	<label for="estadoValorParametro">
		<g:message code="valorParametro.estadoValorParametro.label" default="Estado Valor Parametro" />
		
	</label>
	<g:textField name="estadoValorParametro" maxlength="1" value="${valorParametroInstance?.estadoValorParametro}"/>
</div>

<div class="form-group ${hasErrors(bean: valorParametroInstance, field: 'parametros', 'error')} required">
	<label for="parametros">
		<g:message code="valorParametro.parametros.label" default="Parametros" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parametros" name="parametros.id" from="${presupuesto.Parametro.list()}" optionKey="id" required="" value="${valorParametroInstance?.parametros?.id}" class="many-to-one"/>
</div>

