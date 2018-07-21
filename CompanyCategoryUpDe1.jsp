<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update/Delete</title>
</head>
<body>
<%
String cid=request.getParameter("cid");
String cname=request.getParameter("cname");
String cicon=request.getParameter("cicon");
String cdesc=request.getParameter("cdesc");
String btn=request.getParameter("btn");
if(btn.equalsIgnoreCase("Update"))
{
	String q="";
	if(cicon.equals(""))
	{
		q="update companycategory set ccname='"+cname+"',ccdesc='"+cdesc+"' where ccid="+cid;
	}
	else
	{
		q="update compaanycategory set ccname='"+cname+"',ccicon='"+cicon+"',ccdesc='"+cdesc+"'where ccid="+cid;
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
	q="delete from companycategory swhere ccid="+cid;
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