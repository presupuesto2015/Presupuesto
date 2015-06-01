
<%@ page import="presupuesto.Presupuesto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'presupuesto.label', default: 'Presupuesto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-presupuesto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-presupuesto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list presupuesto">
			
				<g:if test="${presupuestoInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="presupuesto.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${presupuestoInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presupuestoInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="presupuesto.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${presupuestoInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presupuestoInstance?.periodo}">
				<li class="fieldcontain">
					<span id="periodo-label" class="property-label"><g:message code="presupuesto.periodo.label" default="Periodo" /></span>
					
						<span class="property-value" aria-labelledby="periodo-label"><g:formatDate date="${presupuestoInstance?.periodo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${presupuestoInstance?.departamentos}">
				<li class="fieldcontain">
					<span id="departamentos-label" class="property-label"><g:message code="presupuesto.departamentos.label" default="Departamentos" /></span>
					
						<span class="property-value" aria-labelledby="departamentos-label"><g:link controller="departamento" action="show" id="${presupuestoInstance?.departamentos?.id}">${presupuestoInstance?.departamentos?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:presupuestoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${presupuestoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
