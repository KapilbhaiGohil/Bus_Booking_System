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
<title>Register</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@600&family=Poppins:wght@300&display=swap" rel="stylesheet">
</head>
<style>
	<%@include file="/WEB-INF/view/base.css" %>
</style>
<body>
	<c:choose>
	<c:when test="${not empty loginstatus}">
	<c:redirect url="home"></c:redirect>
	</c:when>
	<c:otherwise>
	<div class="container">
		<div class="account-text">
			Create an Account!
		</div>
		<hr>
		<c:if test="${not empty error}">
			<p class="error">${error}</p>
		</c:if>
		<br>
		<div class="register-form">
			<form action="/validate" method="post">
				<div class="row">
					<input style="width: 300px; height: 40px; margin-left: 35px;" class="input-field" type="text" placeholder="First name" name="firstname" value="${user.first_name}">
					<input style="width: 300px; height: 40px; margin-left: 90px;" class="input-field" type="text" placeholder="Last name" name="lastname"  value="${user.last_name}">
				</div>
				<div class="row">
					<input style="width: 703px; height: 40px; margin-left: 35px;" class="input-field" type="text" placeholder="Username" name="username" value="${user.username}">
				</div>
				<div class="row">
					<input style="width: 703px; height: 40px; margin-left: 35px;" class="input-field" type="email" placeholder="Email" name="email" value="${user.email}">
				</div>
				<div class="row">
					<input style="width: 300px; height: 40px; margin-left: 35px;" class="input-field" type="password" placeholder="Password" name="password">
					<input style="width: 300px; height: 40px; margin-left: 90px;" class="input-field" type="text" placeholder="Confirm password" name="cpassword">
				</div>
				<div class="row" style="margin-top: 40px;">
					<input style="background-color:#0275d8; border-radius:40px; margin-left: 38px; width: 713px; height: 40px; border: none" type="submit" required name="submit" id="" value="Submit">
				</div>
				<div class="row">
				<a href="/login" style="margin-left:270px; color: white; font-family:'Poppins', sans-serif;">Already have an Account Sign in</a>
				</div>
			</form> 
		</div>
	</div>
	</c:otherwise>
	</c:choose>
</body>
</html>