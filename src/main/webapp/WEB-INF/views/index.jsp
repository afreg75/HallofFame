<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" />
<title>Hall of Fame</title>
</head>
<body><center>

	<h1><font color="black">Hall of Fame</font></h1>
	
	
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