<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ITEM MANAGEMENT</title>
</head>
<body>
	<h1>ITEM MANAGEMENT</h1>
	<h2>View an Item</h2>
	<form action="viewItem" method = "get">
		<p>Enter ID:</p><input type = "text" name = "id"><br><br>
		<input type="submit" value="VIEW ITEM">
	</form>
	<br><br>
	<a href="index.jsp"><button>HOME</button></a>
</body>
</html>