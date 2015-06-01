
<%@ page import="presupuesto.Presupuesto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'presupuesto.label', default: 'Presupuesto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-presupuesto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-presupuesto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="codigo" title="${message(code: 'presupuesto.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="total" title="${message(code: 'presupuesto.total.label', default: 'Total')}" />
					
						<g:sortableColumn property="periodo" title="${message(code: 'presupuesto.periodo.label', default: 'Periodo')}" />
					
						<th><g:message code="presupuesto.departamentos.label" default="Departamentos" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${presupuestoInstanceList}" status="i" var="presupuestoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${presupuestoInstance.id}">${fieldValue(bean: presupuestoInstance, field: "codigo")}</g:link></td>
					
						<td>${fieldValue(bean: presupuestoInstance, field: "total")}</td>
					
						<td><g:formatDate date="${presupuestoInstance.periodo}" /></td>
					
						<td>${fieldValue(bean: presupuestoInstance, field: "departamentos")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${presupuestoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
