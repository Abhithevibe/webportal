<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
String colid=request.getParameter("colid");
String comid=request.getParameter("comid");
String degree=request.getParameter("degree");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String etp=request.getParameter("etp");
String entp=request.getParameter("entp");
String ivp=request.getParameter("ivp");
String tprice=request.getParameter("tprice");
Date date=new Date();
String q="insert into collegecompanypaper(colid,comid,degree,branch,year,techpaper,nontechpaper,ivpaper,tprice,postdate) values('"+colid+"','"+comid+"','"+degree+"','"+branch+"','"+year+"','"+etp+"','"+entp+"','"+ivp+"','"+tprice+"','"+date+"')";
//out.println(q);
String res=DAO.updateRecord(q);
if(res.equals("yes"))
    out.println("Record Inserted");	
else
    out.println("Record Not Inserted"+res);	
}
catch(Exception ex)
{
out.println("Error : "+ex);	
}


 
%>
</body>
</html>