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
	<div class="container">
		<div class="account-text">
			Enter OTP which is sended you!
		</div>
		<hr>
		<c:if test="${not empty error }">
			<p class="error">${error}</p>
		</c:if>
		<div class="register-form">
			<form action="/forgotpass" method="post">	
				<div class="row">
					<input type="number" maxlength="6" name="votp" style="width: 703px; height: 40px; margin-left: 35px;">
				</div>
				<div class="row">
					<input type="submit" value="Verify" style="background-color:#0275d8; border-radius:40px; margin-left: 38px; width: 713px; height: 40px; border: none">
				</div>
			
				<input type='hidden' value = 'hidden'>
			</form>
		</div>
	</div>
    <script type="text/javascript">
		<%@include file="/WEB-INF/view/base.js" %>
	</script>
</body>
</html>