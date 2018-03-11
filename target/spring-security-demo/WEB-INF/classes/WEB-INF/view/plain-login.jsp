<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
<h3> My Custom Login Form</h3>

<%--
<f:form action = "${pageContext.request.contextPath}/authenticateUser"
--%>
<form action = "${pageContext.request.contextPath}/authenticateUser"
            method="POST">

    <input type="hidden"
        name="${_csrf.parameterName}"
        value="${_csrf.token}" />

    <c:if test="${param.error!=null}">
        <i>Sorry! you entered invalid username/password</i>
    </c:if>

    <c:if test="${param.logout != null}">
        <i>You have been logged out!</i>
    </c:if>

    <p>
        Uesr name: <input type = "text" name="username" />
    </p>
    <p>
        Password : <input type=password" name="password" />
    </p>

    <input type="submit" value = "Login" />
<%--</f:form>--%>
</form>
</body>
</html>
