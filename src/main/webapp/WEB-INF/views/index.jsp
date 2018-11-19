<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hall of Fame</title>
</head>
<body><center>

	<h1>Hello World</h1>
	
	
	<table  class="table table-sm">
		<tr>

			<th>Name</th>
			<th>Invented</th>
			<th>year</th>
		</tr>
		
		<c:forEach var="tinyhero" items="${tinylist}">
			<tr>
				<td>${ tinyhero.name }</td>
				<td>${ tinyhero.invented }</td>
				<td>${ tinyhero.year }</td>
		</tr>
		</c:forEach>
		</table>
		
		<p><a href="/complete">Hall of Fame</a></p>

</center></body>
</html>