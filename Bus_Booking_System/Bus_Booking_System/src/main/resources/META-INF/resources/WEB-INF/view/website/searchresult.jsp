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
	<div class="nav" id="navbar">
		<span class="logo">	
			<div id="mySidenav" class="sidenav">
				<div>
					<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				</div>
					<a href="logout">Log out</a><br>
			</div>
			<a href="javascript:void(0);" class="icon" onclick="openNav()">
					<i class="fa fa-bars"></i>
			</a>
		</span>
        <p style="float:right;padding-right:20px;color:#f2f2f2;">Hello ${loginstatus.first_name}</p>
    </div>
    <div style="padding:5%;">
    	<h1>Success</h1><hr>
    	<p></p><br>
    	<c:choose>
		<c:when test="${empty loginstatus}">
			<c:redirect url="login"></c:redirect>
		</c:when>
		<c:otherwise>
			<form action="/seatbook">
				<c:choose>
					<c:when test="${not empty boo}">
						<c:forEach items="${bushes}" var="item">
						<p>Bus nubmer is ${item.id}</p>
						<c:set var="count" value="1" scope="request"></c:set>
							<c:forEach  items="${item.seats}" var="seat">
									<img src="https://gsrtc.in/OPRSOnline/images2/availableSeatnew.gif" alt="">
									${seat}
									 <c:set var="count" value="${count + 1}" scope="request"/><br>
							</c:forEach>
							<input type="hidden" name="busid" value="${item.id}">
							<p>Enter the seat number you want to book</p>
							<input type = "number"  name = "seatno">
							<input type = "number"  name = "seatno2">
						<input type="submit" Value= "Book Now">
						</c:forEach>
					</c:when>
					<c:otherwise>
					<c:redirect url="home"></c:redirect>
					</c:otherwise>
				</c:choose>
			</form>
		</c:otherwise>
</c:choose>
    </div>
    <script type="text/javascript">
		<%@include file="/WEB-INF/view/base.js" %>
	</script>
</body>
</html>