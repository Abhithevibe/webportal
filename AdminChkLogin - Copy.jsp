<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Check</title>
</head>
<body>
<%
String alid=request.getParameter("alid");
String pwd=request.getParameter("pwd");
if(alid.equals("admin")&&pwd.equals("admin"))
{
	response.sendRedirect("AdminHome.jsp");
}
else
{
	out.println("ID/Password Not Matched...");
}
%>
</body>
</html>