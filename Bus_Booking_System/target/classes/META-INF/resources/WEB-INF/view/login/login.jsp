<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in</title>
</head>
<body>

	<c:choose>
	<c:when test="${not empty loginstatus}">
	<c:redirect url="home"></c:redirect>
	</c:when>
	<c:otherwise>
	<c:if test="${not empty loginerror}">
	<p>${loginerror}</p>
	</c:if>
    <form action="" method="post">
        <input type="text" name="username" id="">username
        <input type="password" name="password" id="">password
        <a href="/register">Register here</a>
        <a href="/forgotpass">Forgot password</a>
        <input type="submit" name="" id="" value="submit">
    </form>
	</c:otherwise>
	</c:choose>
</body>
</html>