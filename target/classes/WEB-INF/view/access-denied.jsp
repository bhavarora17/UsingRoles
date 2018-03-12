<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags"%>
<html>

<head>
	<title>Bhavy- Page - Access Denied</title>
</head>

<body>

	<p>
		<a href="${pageContext.request.contextPath}/">Back to Home</a>
		Only for Manager peeps
	</p>
	<p>
		<h2>Access Denied - you are bit authorized to access this resource</h2>
	</p>

</body>

</html>