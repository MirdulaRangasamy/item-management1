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
	<h2>Update an Item</h2>
	<form action="updateItem" method = "get">
		<p>Enter ID:</p><input type = "text" name = "id"><br><br>
		<p>Enter NAME:</p><input type = "text" name = "name"><br><br>
		<p>Enter COST:</p><input type = "text" name ="cost"><br><br>
		<input type="submit" value="UPDATE ITEM">
	</form><br><br>
	<a href="index.jsp"><button>HOME</button></a>
</body>
</html>