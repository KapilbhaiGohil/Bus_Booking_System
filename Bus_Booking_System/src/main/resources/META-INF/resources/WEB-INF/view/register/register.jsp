<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% response.setHeader("cache-Control","no-cache,no-store,must-revalidate"); 
response.setHeader("Pragma","no-cache");    
response.setHeader("Expires","0"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
	<c:when test="${not empty loginstatus}">
	<c:redirect url="home"></c:redirect>
	</c:when>
	<c:otherwise>
	<c:if test="${not empty error}">
	<p>${error}</p>
	</c:if>
	<form action="/validate" method="post">
        <input type="text" required name="username" value="${user.username}">username <br>
        <input type="password" required name="password">password <br>
		<input type="password" required name="cpassword">Conform password <br>
        <input type="text" required name="email" id="" value="${user.email}">email <br> 
        <input type="text" required name="firstname" id="" value="${user.first_name}">firstname <br>
        <input type="text" required name="lastname" id="" value="${user.last_name}">lastname <br>
        <input type="submit" required name="submit" id="" value="Submit">
    </form>
	</c:otherwise>
	</c:choose>
</body>
</html>