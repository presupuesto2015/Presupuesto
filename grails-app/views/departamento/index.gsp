
<%@ page import="presupuesto.Departamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'departamento.label', default: 'Departamento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-departamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="navbar" role="navigation">
			<ul class="nav">
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-departamento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="codigo" title="${message(code: 'departamento.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'departamento.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${departamentoInstanceList}" status="i" var="departamentoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${departamentoInstance.id}">${fieldValue(bean: departamentoInstance, field: "codigo")}</g:link></td>
					
						<td>${fieldValue(bean: departamentoInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${departamentoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
