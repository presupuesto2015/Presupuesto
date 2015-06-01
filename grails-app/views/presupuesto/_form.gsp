<%@ page import="presupuesto.Presupuesto" %>



<div class="form-group ${hasErrors(bean: presupuestoInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="presupuesto.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" maxlength="30" value="${presupuestoInstance?.codigo}"/>
</div>

<div class="form-group ${hasErrors(bean: presupuestoInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="presupuesto.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" value="${fieldValue(bean: presupuestoInstance, field: 'total')}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: presupuestoInstance, field: 'periodo', 'error')} ">
	<label for="periodo">
		<g:message code="presupuesto.periodo.label" default="Periodo" />
		
	</label>
	<g:datePicker name="periodo" precision="day"  value="${presupuestoInstance?.periodo}" default="none" noSelection="['': '']" />
</div>

<div class="form-group ${hasErrors(bean: presupuestoInstance, field: 'departamentos', 'error')} required">
	<label for="departamentos">
		<g:message code="presupuesto.departamentos.label" default="Departamentos" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="departamentos" name="departamentos.id" from="${presupuesto.Departamento.list()}" optionKey="id" required="" value="${presupuestoInstance?.departamentos?.id}" class="many-to-one"/>
</div>

