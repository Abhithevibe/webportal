<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buy Paper</title>
</head>
<body>
<%
String pid=request.getParameter("pid");
%>
<form action="BuyPaper1.jsp">
<center>
<table border="1">
<caption>Buy Now</caption>
<tr><td>Student Acc. No.</td><td><input type="text" name="sacc"></td></tr>
<tr><td>Password</td><td><input type="password" name="spwd"></td></tr>
<tr><td><input type="submit" value="Buy now"></td><td><input type="reset"></td></tr>
</table>
</center>
</form>
</body>
</html>