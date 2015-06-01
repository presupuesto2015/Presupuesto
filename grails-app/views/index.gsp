<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb"/>
		<title>Welcome to Grails</title>
		
	</head>
	<body>
		
		<div id="page-body" role="main">
			

			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
	</body>
</html>
