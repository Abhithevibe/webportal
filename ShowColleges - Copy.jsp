<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="bs.dao.*" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Colleges</title>
</head>
<body>
<%
try
{
String ccid=request.getParameter("ccid");
ResultSet rs=DAO.displayRecord("select*from collegereg where ccid='"+ccid+"'");
if(rs.next())
{
%>		
<tr><td>Category ID</td><td>College ID</td><td>College Name</td></tr>
<%	do{
	out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><tr>");

  }while(rs.next());
}
else
{
}
}
catch(Exception ex)
{
out.println("Error:"+ex);
}

%>
</body>
</html>