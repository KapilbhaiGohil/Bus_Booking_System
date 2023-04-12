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
<style>
	select{
	width: 15%;
    padding: 10px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
    border-radius: 10px;
	}
	input{
		width: 15%;
	}
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
		<center>
			<form method='post' action='searchresult'>
			<select id="source" name = 'source' ' onclick="myfunction()"   required placeholder="Pick a state...">
				<option value="" disabled selected>SOURCE</option>
				<option value="NADIAD">NADIAD</option>
				<option value="VADODARA">VADODARA</option>
				<option value="AHMEDABAD">AHMEDABAD</option>
				<option value="BHAVNAGAR">BHAVNAGAR</option>
			  </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<!-- <input type='search' list="cities" name ='source' placeholder='Source'> -->
				<select id="destination" name = 'destination'  required>
				<option value="" disabled selected>DESTINATION</option>
			  </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type='date' name = 'date' required id='inputdate' placeholder='onwards'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<select id="noseat" required name = "noseat">
				<option value=""  selected>Seats</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type='Submit' value="Check For Bus">
			</form>
		</center>
		</c:otherwise>
	</c:choose>
    </div>
    
    <script type="text/javascript">
		<%@include file="/WEB-INF/view/base.js" %>
	</script>
</body>
</html>