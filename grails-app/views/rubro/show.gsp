
<%@ page import="presupuesto.Rubro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'rubro.label', default: 'Rubro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rubro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rubro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rubro">
			
				<g:if test="${rubroInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="rubro.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${rubroInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rubroInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="rubro.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${rubroInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rubroInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="rubro.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${rubroInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rubroInstance?.periodo}">
				<li class="fieldcontain">
					<span id="periodo-label" class="property-label"><g:message code="rubro.periodo.label" default="Periodo" /></span>
					
						<span class="property-value" aria-labelledby="periodo-label"><g:formatDate date="${rubroInstance?.periodo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rubroInstance?.departamentos}">
				<li class="fieldcontain">
					<span id="departamentos-label" class="property-label"><g:message code="rubro.departamentos.label" default="Departamentos" /></span>
					
						<span class="property-value" aria-labelledby="departamentos-label"><g:link controller="departamento" action="show" id="${rubroInstance?.departamentos?.id}">${rubroInstance?.departamentos?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${rubroInstance?.elementos}">
				<li class="fieldcontain">
					<span id="elementos-label" class="property-label"><g:message code="rubro.elementos.label" default="Elementos" /></span>
					
						<g:each in="${rubroInstance.elementos}" var="e">
						<span class="property-value" aria-labelledby="elementos-label"><g:link controller="elemento" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${rubroInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="rubro.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${rubroInstance?.usuario?.id}">${rubroInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rubroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rubroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
