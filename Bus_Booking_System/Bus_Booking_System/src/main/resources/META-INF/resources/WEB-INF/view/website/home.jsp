<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
	<%@include file="/WEB-INF/view/base.css" %>
</style>
<body>
	<div class="nav">
		<div class="nav-left-text">
			Hello ${loginstatus.first_name}
		</div>
		<div class="nav-logout">
			<a href="logout">Log out</a>
		</div>
	</div>
    <div style="padding:5%;">
    	<c:choose>
		<c:when test="${empty loginstatus}">
			<c:redirect url="login"></c:redirect>
		</c:when>
		<c:otherwise>
		<div class="container" style="margin-top: -30px;">
			<div class="account-text">
				Book your ticket!
			</div>
			<hr>
			<div class="register-form">
				<form method='post' action='searchresult'>
					<div class="row">
						<select class="input-field" id="source" name = 'source'  onclick="myfunction()" required style="width: 703px; height: 40px; margin-left: 35px;">
							<option value="" disabled selected>SOURCE</option>
							<option value="NADIAD">NADIAD</option>
							<option value="VADODARA">VADODARA</option>
							<option value="AHMEDABAD">AHMEDABAD</option>
							<option value="BHAVNAGAR">BHAVNAGAR</option>
						 </select>
					</div>
					<div class="row">
						<select id="destination" name = 'destination'  required style="width: 703px; height: 40px; margin-left: 35px; border-radius: 40px; background-color: white; padding: 10px;">
							<option value="" disabled selected>DESTINATION</option>
						 </select>
					</div>
					<div class="row">
						<input style="width: 703px; height: 40px; margin-left: 35px; border-radius: 40px; background-color: white;" type='date' name = 'date' required id='inputdate' placeholder='onwards'>
					</div>
					<div class="row">
						<input type='Submit' value="Check For Bus" style="background-color:#0275d8; border-radius:40px; margin-left: 38px; width: 713px; height: 40px; border: none">
					</div>
				</form>
			</div>
		</div>
		</c:otherwise>
	</c:choose>
    </div>
    
    <script type="text/javascript">
		<%@include file="/WEB-INF/view/base.js" %>
	</script>
</body>
</html>