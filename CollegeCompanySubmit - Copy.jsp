  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> College Company Submit</title>
</head>
<body>
<%

try
{
	String colid=request.getParameter("colid");
String comid =request.getParameter("comid");
String adt=request.getParameter("adt");
String pk=request.getParameter("pk");
String jdesc=request.getParameter("jdesc");
String cdesc=request.getParameter("cdesc");
String st=request.getParameter("st");
String postdate=new java.util.Date().toString();
//String q="insert into collegecompany(colid,comid,cdate,cpackage,cdesc,jdesc,postdate,stdtypes)values('"+colid+"','"+comid+"','"+adt+"','"+pk+"','"+cdesc+"','"+jdesc+"','"+st+"')";
String q="insert into collegecompany(colid,comid,cdate,cpackage,cdesc,jdesc,postdate,stdtypes)values('"+colid+"','"+comid+"','"+adt+"','"+pk+"','"+cdesc+"','"+jdesc+"','"+postdate+"','"+st+"')";

String res=DAO.updateRecord(q);
if(res.equals("yes"))
{
	out.println("Record Inserted..");
}
else
{
	out.println("Record Not Inserted..");
}
}
catch(Exception ex)
{
out.println("Error:"+ex);
}
%>
</body>
</html>