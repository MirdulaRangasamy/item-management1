<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>ITEM MANAGEMENT</h1>
	<h2>Delete an Item</h2>
	<form action="deleteItem" method = "get">
		<p>Enter ID:</p><input type = "text" name = "id"><br><br>
		<input type="submit" value="DELETE ITEM">
	</form><br><br>
	<a href="index.jsp"><button>HOME</button></a>
</body>
</html>