<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
	<c:when test="${not empty verify }">
	<c:if test="${not empty error }">
	<p>${error}</p>
	</c:if>
	<form method = "post" action = "/changepass">
	<input type="text" name="pass1">password
	<input type="text" name="pass2">conform password
	<input type='submit' value= "Submit">
	</form>
	</c:when>
	<c:otherwise>	
	<c:if test="${not empty error }">
	<p>${error}</p>
	</c:if>
	<form method = "post" action = "/forgotpass">
	<input type="text" name="email">enter email
	<input type='submit' value= "Get OTP">
	</c:otherwise>
	</c:choose>
	</form>
	
</body>
</html>