<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    <%@include file="/WEB-INF/view/base.css" %>
</style>
<body>
    <div style="padding: 5%;">
        <h1>Account Status</h1><hr>
	<p>${error}</p>
	<p>Your account has been successfully created </p>
    you can <a href="/login">log in here</a>
    </div>
    <script type="text/javascript">
		<%@include file="/WEB-INF/view/base.js" %>
	</script>
</body>
</html>