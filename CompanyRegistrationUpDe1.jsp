<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String cid=request.getParameter("cid");
String ccid=request.getParameter("ccid");
String cname=request.getParameter("cname");
String clogo=request.getParameter("clogo");
String cadd=request.getParameter("cadd");
String cpin=request.getParameter("cpin");
String ccty=request.getParameter("ccty");
String ccno=request.getParameter("ccno");
String ceid=request.getParameter("ceid");
String cweb=request.getParameter("cweb");
String ctype=request.getParameter("ctype");
String cdesc=request.getParameter("cdesc");
String btn=request.getParameter("btn");
if(btn.equalsIgnoreCase("Update"))
{
	String q="";
	if(clogo.equals(""))
	{
		q="update companyreg set ccid='"+ccid+"',cname='"+cname+"',clogo='"+clogo+"',caddress='"+cadd+"',cpin='"+cpin+"',cityid='"+ccty+"',cno='"+ccno+"',cemail='"+ceid+"',cweb='"+cweb+"',ctype='"+ctype+"',cdesc='"+cdesc+"' where cid="+cid;
	}
	else
	{
		q="update companyreg set ccid='"+ccid+"',cname='"+cname+"',caddress='"+cadd+"',cpin='"+cpin+"',='"+cpin+"',cityid='"+ccty+"',cno='"+ccno+"',cemail='"+ceid+"',cweb='"+cweb+"',ctype='"+ctype+"',cdesc='"+cdesc+"' where cid="+cid;
	}
	String res=DAO.updateRecord(q);
	if(res.equals("yes"))
	{
		out.println("Record Updated");
	}
	else
	{
		out.println("Record Not Updated");
	}
}
else
{
	String q="";
	q="delete from companyreg where ccid="+cid;
	String res=DAO.updateRecord(q);
	if(res.equals("yes"))
	{
		out.println("Record Deleted");
	}
	else
	{
		out.println("Record Not Deleted");
	}
}
%>
</body>
</html>