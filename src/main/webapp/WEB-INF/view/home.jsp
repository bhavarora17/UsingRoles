<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>

	<h2>luv2code Company Home Page</h2>
	<hr>
	
	Welcome to the luv2code company home page!

	<f:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value="Logout">
	</f:form>
</body>

</html>