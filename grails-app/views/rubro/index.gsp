
<%@ page import="presupuesto.Rubro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'rubro.label', default: 'Rubro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-rubro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-rubro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'rubro.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="total" title="${message(code: 'rubro.total.label', default: 'Total')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'rubro.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="periodo" title="${message(code: 'rubro.periodo.label', default: 'Periodo')}" />
					
						<th><g:message code="rubro.departamentos.label" default="Departamentos" /></th>
					
						<th><g:message code="rubro.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${rubroInstanceList}" status="i" var="rubroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rubroInstance.id}">${fieldValue(bean: rubroInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: rubroInstance, field: "total")}</td>
					
						<td>${fieldValue(bean: rubroInstance, field: "codigo")}</td>
					
						<td><g:formatDate date="${rubroInstance.periodo}" /></td>
					
						<td>${fieldValue(bean: rubroInstance, field: "departamentos")}</td>
					
						<td>${fieldValue(bean: rubroInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rubroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
