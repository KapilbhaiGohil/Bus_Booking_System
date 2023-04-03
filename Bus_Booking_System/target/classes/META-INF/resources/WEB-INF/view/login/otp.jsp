<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Otp Verification</title>
</head>
<body>
	<c:if test="${not empty error }">
	<p>${error}</p>
	</c:if>
	<form action="/forgotpass" method = "post">	
	<input type="number" maxlength="6" name="votp">
	<input type='hidden' value = 'hidden'>
	<input type="submit" value="Verify">
	</form>
</body>
</html>