<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in</title>
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
			Login
		</div>
		<hr>
		<c:if test="${not empty loginerror}">
			<p class="error">${loginerror}</p>
		</c:if>
		<div class="register-form">
			<form action="" method="post">
				<div xclass="row">
						<input id="" style="width: 703px; height: 40px; margin-left: 35px;" class="input-field" type="text" placeholder="Username" name="username" value="${user.first_name}">
				</div>
				<div class="row">
						<input id="" style="width: 703px; height: 40px; margin-left: 35px;" class="input-field" type="password" placeholder="Password" name="password" value="${user.first_name}">
				</div>
				<div class="row" style="margin-top: 40px;">
						<input style="background-color:#0275d8; border-radius:40px; margin-left: 38px; width: 713px; height: 40px; border: none" type="submit" required name="" id="" value="Login">
				</div>
				<div class="row">
					<a href="/register" style="margin-left:40px; color: white; font-family:'Poppins', sans-serif;">Register</a>
					<a href="/forgotpass" style="margin-left:530px; color: white; font-family:'Poppins', sans-serif;">Forgot password</a>
				</div>
			</form>
		</div>
	</div>
	</c:otherwise>
	</c:choose>
</body>
</html>