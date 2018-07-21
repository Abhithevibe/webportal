
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%

try
{
	String cname=request.getParameter("cname");
String cicon=request.getParameter("cicon");
String cdesc=request.getParameter("cdesc");
if(cname.equals("null")||cname.equals(null))
	{
	}
else
	{
		String q="insert into collegecategory(ccname,ccicon,ccdesc)values('"+cname+"','"+cicon+"','"+cdesc+"')";
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
</body>
</html>