<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Info Submit </title>
<%

try
{
	String ccid=request.getParameter("ccid");	
String cname=request.getParameter("cname");
String clogo=request.getParameter("clogo");
String cadd=request.getParameter("cadd");
String cpin=request.getParameter("cpin");
String cno=request.getParameter("cno");
String ceid=request.getParameter("ceid");
String cweb=request.getParameter("cweb");
String ctype=request.getParameter("ctype");
String cdesc=request.getParameter("cdesc");
if(cname.equals("null")||cname.equals(null))
	{
	}
else
	{
//	String q="insert into collegereg(ccid,cname,clogo,caddress,cpin,cno,cemail,cweb,ctype,cdesc)values('"+ccid+"','"+cname+"','"+clogo+"','"+cadd+"','"+cpin+"','"+cno+"','"+ceid+"','"+cweb+"','"+ctype+"','"+cdesc+"')";
	String q="insert into collegereg(ccid,cname,clogo,caddress,cpin,cno,cemail,cweb,ctype,cdesc)values('"+ccid+"','"+cname+"','"+clogo+"','"+cadd+"','"+cpin+"','"+cno+"','"+ceid+"','"+cweb+"','"+ctype+"','"+cdesc+"')";
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
}
catch(Exception ex)
{
out.println("Error:"+ex);
}
%>

</head>
<body>

</body>
</html>