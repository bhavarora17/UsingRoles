<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags"%>
<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>

<s:authorize access="hasRole('MANAGER')">
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
		Only for Manager peeps
	</p>
</s:authorize>
<s:authorize access="hasRole('ADMIN')">
	<p>
		<a href="${pageContext.request.contextPath}/systems">Systems Meeting</a>
		Only for ADMIN peeps
	</p>
</s:authorize>
	<!-- display the user name and role -->
	<p>
		User : <s:authentication property="principal.username" />
		<br/><br/>
		Role(s) : <s:authentication property="principal.authorities"/>
	</p>
	<h2>luv2code Company Home Page</h2>
	<hr>
	
	Welcome to the luv2code company home page!

	<f:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value="Logout">
	</f:form>
</body>

</html>