<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>basic</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
		<c:choose>
			<c:when test="${not empty verify}">
			<div class="container">
				<div class="account-text">
					Enter new password
				</div>
				<hr>
				<c:if test="${not empty error }">
					<p class="error">${error}</p>
				</c:if>
				<div class="register-form">
					<form method = "post" action = "/changepass">
						<div class="row">
							<input placeholder="Password" style="width: 703px; height: 40px; margin-left: 35px;" class="input-field" type="text" name="pass1">
						</div>
						<div class="row">
							<input placeholder="Confirm-Password" style="width: 703px; height: 40px; margin-left: 35px;" class="input-field" type="text" name="pass2">
						</div>
						<div class="row">
							<input style="background-color:#0275d8; border-radius:40px; margin-left: 38px; width: 713px; height: 40px; border: none" type='submit' value= "Submit">
						</div>
					</form>
				</div>
			</div>
		</c:when>
	<c:otherwise>	
	<c:if test="${not empty error }">
		<p class="error">${error}</p>
	</c:if>
		<div class="container">
			<div class="account-text">
				Enter email of your account?
			</div>
			<hr>
			<div class="register-form">
				<form method = "post" action = "/forgotpass">
					<div class="row">
						<input placeholder="Enter Email" class="input-field" type="email" required name="email" style="width: 703px; height: 40px; margin-left: 35px;">
					</div>
					<div class="row">
						<input type='submit' value="Get OTP" style="background-color:#0275d8; border-radius:40px; margin-left: 38px; width: 713px; height: 40px; border: none">
					</div>
				</form>
			</div>
		</div>
		</c:otherwise>
		</c:choose>
	</c:otherwise>
    </c:choose>
    </div>
    <script type="text/javascript">
		<%@include file="/WEB-INF/view/base.js" %>
	</script>
</body>
</html>