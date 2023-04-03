<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty loginstatus}">
			<c:redirect url="login"></c:redirect>
		</c:when>
		<c:otherwise>
		<form method='post'>
		<label for="source">Source</label>
		<select id="source" name = 'source' placeholder="Pick a state...">
			<option value="">SELECT A CITY</option>
			<option value="NADIAD">NADIAD</option>
			<option value="VADODARA">VADODARA</option>
			<option value="AHMEDABAD">AHMEDABAD</option>
			<option value="BHAVNAGAR">BHAVNAGAR</option>
		  </select>
		<!-- <input type='search' list="cities" name ='source' placeholder='Source'> -->
		<label for="destination">Destination</label>
			<select id="" name = 'destination' >
			<option value="">SELECT A CITY</option>
			<option value="NADIAD">NADIAD</option>
			<option value="VADODARA">VADODARA</option>
			<option value="AHEMDABAD">AHEMDABAD</option>
			<option value="BHAVNAGAR">BHAVANAGAR</option>
		  </select>	
		<label for="date">Onward</label>	
		<input type='date' name = 'date'  id='inputdate' placeholder='onwards'>
		<input type='Submit' value="Check For Bus">
		</form>
		<a href="logout">logout</a>
		<p>hello ${loginstatus}</p>
		</c:otherwise>
	</c:choose>
</body>
</html>