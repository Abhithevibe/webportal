1<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="bs.dao.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Login Check</title>
</head>
<body>
<% 
try
{
	String slid=request.getParameter("slid");
	String pwd=request.getParameter("pwd");
	String q="select*from studentreg where slogin='"+slid+"'and spwd='"+pwd+"'";
	ResultSet rs=DAO.displayRecord(q);
	if(rs.next())
	{
		HttpSession ses=request.getSession(true);
		ses.putValue("slid", pwd);
		ses.putValue("stime",new java.util.Date().toString());
		response.sendRedirect("StudentHome.jsp");
	}
	else
	{
		out.println("ID/Password Not Matched...<a href=StudentLogin.jsp> try again</a>");
	}
}
catch(Exception e)
{
	out.println("Error:"+e);
}
%>


</body>
</html>