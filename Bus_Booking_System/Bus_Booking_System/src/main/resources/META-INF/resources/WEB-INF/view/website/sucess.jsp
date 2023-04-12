<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>

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
    	<h1>Success</h1><hr>
    	<p>Your seat has been sucessfully booked</p><br>
    </div>
    <script type="text/javascript">
		<%@include file="/WEB-INF/view/base.js" %>
	</script>
</body>
</html>