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

<center>
<form action="CollegeCompanyPaperSubmit.jsp">
<table border="10" cellspacing="10" cellpadding="10">
<caption>
<font  size="5" >College-Company Paper Form</font>
</caption>
<tr><td>College Name</td><td>
<%
String q="select * from collegereg";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{ 
	
	out.println("<select name=colid>");
	out.println("<option>Select College Name</option>");
	do
	{
	out.println("<option value="+rs.getString(1)+">"+rs.getString(3)+"</option>");

}while(rs.next());
}
rs.close();
%>
</td></tr>
<tr><td>Company Name</td><td>
<%
q="select * from companyreg";
rs=DAO.displayRecord(q);
if(rs.next())
{ 
	
	out.println("<select name=comid>");
	out.println("<option>Select Company Name</option>");
	do
	{
	out.println("<option value="+rs.getString(1)+">"+rs.getString(3)+"</option>");

}while(rs.next());
}
rs.close();
%></td></tr>
<tr><td>Enter Degree</td><td><input type="text" name="degree" placeholder="Enter Degree"></td></tr>
<tr><td>Branch</td><td><input type="text" name="branch" placeholder="Enter Branch"></td></tr>
<tr><td>Year</td><td><input type="date" name="year" placeholder="Enter Year"></td></tr>
<tr><td>Enter Technical Paper</td><td><input type="file" name="etp"></td></tr>
<tr><td>Enter Non Technical Paper</td><td><input type="file" name="entp"></td></tr>
<tr><td>Enter Interview Paper</td><td><input type="file" name="ivp"></td></tr>
<tr><td>Enter Total Price</td><td><input type="number" name="tprice" placeholder="Enter Total Price"></td></tr>
<tr><td><input type="submit"></td><td><input type="reset" value="clear"></td></tr>
</table>
</form>
</body>
</html>