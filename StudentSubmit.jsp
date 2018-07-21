<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
<%@page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student submit</title>
</head>
<body>
 <%
try
{
	String sname=request.getParameter("sname").toString();
	String sdob=request.getParameter("sdob").toString();
	String smob=request.getParameter("smob").toString();
	String sadd=request.getParameter("sadd").toString();
	String cid=request.getParameter("cid").toString();
	String sdeg=request.getParameter("sdeg").toString();
	String syear=request.getParameter("syear").toString();
	String semail=request.getParameter("semail").toString();
	String slid=request.getParameter("slid").toString();
	String pwd=request.getParameter("pwd").toString();
	String q="insert into studentreg(sname,sdob,smob,sadd,scty,sdegree,syear,slogin,semail,spwd) values('"+sname+"','"+sdob+"','"+smob+"','"+sadd+"','"+cid+"','"+sdeg+"','"+syear+"','"+slid+"','"+semail+"','"+pwd+"')"; 
	String res=DAO.updateRecord(q);
	if(res.equals("yes"))
	{
			out.println("Record inserted");
	}
	else
	{
			out.println("Record not inserted");
	}
}
	
catch(Exception ex)
{ 
	out.println("Error:"+ex);

}
 
 %>
</body>
</html>