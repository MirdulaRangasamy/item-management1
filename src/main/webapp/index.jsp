<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MVC DEMO 1</title>
</head>
<body>
	<h1>ITEM MANAGEMENT</h1>

	<a href="addItem.jsp"><button>ADD AN ITEM</button></a>
	<br>
	<br>
	<a href="viewItem.jsp"><button>VIEW AN ITEM</button></a>
	<br>
	<br>
	
	<form action="viewAllItem" method="get">
		<input type="submit" value="VIEW ALL ITEM">
	</form>
	<br>

	<a href="updateItem.jsp"><button>UPDATE AN ITEM</button></a>
	<br>
	<br>
	<a href="deleteItem.jsp"><button>DELETE AN ITEM</button></a>
	<br>
	<br>
</body>
</html>