<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complete List</title>
</head>
<body><center>

<h1>Complete Hall of Fame</h1>
		
	<table  class="table table-sm">
		<tr>

			<th>FirstName</th>
			<th>LastName</th>
			<th>Innovation</th>
			<th>Year</th>
		</tr>
		
		<c:forEach var="complete" items="${completelist}">
			<tr>
				<td>${ complete.firstName }</td>
				<td>${ complete.lastName}</td>
				<td>${ complete.innovation }</td>
				<td>${ complete.year }</td>
		</tr>
		</c:forEach>
		</table>
		<p><a href="/">Home</a></p>

</center></body>
</html>