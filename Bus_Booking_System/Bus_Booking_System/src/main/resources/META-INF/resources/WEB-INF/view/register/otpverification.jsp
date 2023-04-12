<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Otp Verification</title>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		<%@include file="/WEB-INF/view/base.css" %>
	</style>
</head>
<body>			
	<div class="container">
		<div class="account-text">
			Verification!
		</div>
		<hr>
		<div class="register-form">
			<form action="/validate" method="post">
				<div class="row">
					<input style="margin-left:35px; width:703px; height: 40px; border:none;" class="input-field" placeholder="Enter OTP" type="number" maxlength="6" name="votp">
				</div>
				<div class="row">
					<input style="background-color:#0275d8; border-radius:40px; margin-left: 38px; width: 713px; height: 40px; border: none" type="submit" value="Verify OTP">
				</div>
				<div class="row">
					<a href="/register" style="margin-left:50px; color: white; font-family:'Poppins', sans-serif;">Register</a>
					<a href="/login" style="margin-left:550px; color: white; font-family:'Poppins', sans-serif;">Sign in</a>
				</div>
			</form>
		</div>
	</div>	
</body>
<script type="text/javascript">
	<%@include file="/WEB-INF/view/base.js" %>
</script>
</html>