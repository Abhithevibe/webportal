<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*" %>
    <%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
String pid=request.getParameter("pid");
String accno=request.getParameter("accno");
String pwd=request.getParameter("pwd");
//String stime=request.getParameter("pdate");

String q="select tprice from collegecompanypaper where comcolpid='"+pid+"'";
ResultSet rs=DAO.displayRecord(q);
String tpri="";
if(rs.next())
{
	tpri=rs.getString(1);
}
rs.close();
q="update mybank set bal=bal-"+tpri+"where accno='"+accno+"' and password='"+pwd+"' and bal>='"+(Integer.parseInt(tpri)+2500)+"'"; 
DAO.updateRecord(q);
q="update mybank set bal=bal-"+tpri+"where accno='1000'";
DAO.updateRecord(q);
//q="insert into studentpaperbuy(sid,accno,comcolpid,bdt)values('"+pid+"','"+accno+"','"+pid+"','"+stime+"')";
DAO.updateRecord(q);
out.println("Trans Completed");
} 
catch(Exception ex)
{
	response.sendRedirect("BuyPaper.jsp");
}

%>
</body>
</html>