<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company Category Submit</title>
</head>
<body>
<% try
{
String cname=request.getParameter("coname");
String cicon=request.getParameter("coicon");
String cdesc=request.getParameter("codesc");
if(cname.equals("null")||cname.equals(null))
	{
	}
else
	{
		String q="insert into companycategory(coname,coicon,codesc)values('"+cname+"','"+cicon+"','"+cdesc+"')";
		String res=DAO.updateRecord(q);
		if(res.equals("yes"))
		{
				out.println("Record inserted");
		}
		else
		{
				out.println("Record not adinserted");
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