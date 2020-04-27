<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>luv2code</title>
</head>
<body>
	<h2>luv2code Company Home Page</h2>
	<hr>
	<p>Welcome to luv2code company home page - Yahoo!!!</p>
	<hr>
	<%-- display username and role --%>
	<p>
		User :
		<security:authentication property="principal.username" />
		<br> Role(s) :
		<security:authentication property="principal.authorities" />
	</p>
	<hr>
	<%-- Add a link to point to /leaders ... this is only for managers --%>
	<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership
				meeting</a> (Only for Managers peeps)
		</p>
		<hr>
	</security:authorize>

	<%-- Add a link to point to /systems ... this is only for admin --%>
	<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems
				meeting</a> (Only for Admin peeps)
		</p>
		<hr>
	</security:authorize>
	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input type="submit" value="Logout" />
	</form:form>
</body>
</html>