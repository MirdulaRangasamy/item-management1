<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ page import="entity.Item" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ITEM MANAGEMENT</title>
</head>
<body>
	<h1>ITEM DETAILS</h1>
	<%
		String mode = (String)request.getAttribute("mode");
		if(mode.equals("single"))
		{
			boolean flag = (Boolean)request.getAttribute("flag");
			if(flag)
			{
				Item i = (Item)request.getAttribute("item");
				out.println("<table border="+1+"px> <tr> <th> ID</th> <th>Name</th> <th>Cost</th></tr>");
				out.println("<tr><td>"+i.getId()+"</td><td>"+i.getName()+"</td><td>"+i.getCost()+"</td></tr></table>");	
			}
			else
			{
				out.println("<b>Item Not Available</b>");
			}
		}
		else if(mode.equals("list"))
		{
			ArrayList<Item> ilist = (ArrayList<Item>)request.getAttribute("item");
			out.println("<table border="+1+"px> <tr> <th> ID</th> <th>Name</th> <th>Author</th></tr>");
			for(Item i:ilist)
			{
				out.println("<tr><td>"+i.getId()+"</td><td>"+i.getName()+"</td><td>"+i.getCost()+"</td></tr>");
			}
			out.println("</table>");
		}
	%>
	<br>
	<a href="index.jsp"><button>HOME</button></a>
</body>
</html>