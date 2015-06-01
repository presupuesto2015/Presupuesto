
<%@ page import="presupuesto.Elemento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'elemento.label', default: 'Elemento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-elemento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-elemento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'elemento.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="prioridad" title="${message(code: 'elemento.prioridad.label', default: 'Prioridad')}" />
					
						<g:sortableColumn property="precio" title="${message(code: 'elemento.precio.label', default: 'Precio')}" />
					
						<g:sortableColumn property="cantidad" title="${message(code: 'elemento.cantidad.label', default: 'Cantidad')}" />
					
						<th><g:message code="elemento.rubros.label" default="Rubros" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${elementoInstanceList}" status="i" var="elementoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${elementoInstance.id}">${fieldValue(bean: elementoInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: elementoInstance, field: "prioridad")}</td>
					
						<td>${fieldValue(bean: elementoInstance, field: "precio")}</td>
					
						<td>${fieldValue(bean: elementoInstance, field: "cantidad")}</td>
					
						<td>${fieldValue(bean: elementoInstance, field: "rubros")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${elementoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
