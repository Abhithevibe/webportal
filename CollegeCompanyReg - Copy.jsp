<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Company Registration</title>
</head>
<body>
<form action="CollegeCompanySubmit.jsp">
<center>
<table border="1">
<caption><font size="5">College Company Registration</font></caption>
<tr><td>College Name</td><td>
<%
String q="select*from collegereg";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{	out.println("<select name=colid>");
	out.println("<option>-Select College Name-<option>");
	do
	{	out.println("<option value="+rs.getString(1)+">"+rs.getString(3)+"</option>");
	}while(rs.next());
out.println("</select>");
}

%>
</td></tr>
<tr><td>Company Name</td><td>
 
 
 <%
String a="select*from companyreg";
rs=DAO.displayRecord(q);
if(rs.next())
{	out.println("<select name=comid>");
	out.println("<option>-Select Company Name-<option>");
	do
	{	out.println("<option value="+rs.getString(1)+">"+rs.getString(3)+"</option>");
	}while(rs.next());
out.println("</select>");
} 
rs.close();

%>
</td></tr>
<tr></tr>
<tr><td>Campus Date</td><td><input type="date" name="adt"></td></tr>
<tr><td>Package</td><td><input type="number" name="pk"></td></tr>
<tr><td>Student Type</td><td><input type="radio" name="st" value="running" checked>Running<input type="radio" name="st" value="passout">Passout</td></tr>
<tr><td>Job desc</td><td><textarea name="jdesc" rows="5" cols="30"></textarea></td></tr>
<tr><td>Company Desc</td><td><textarea name="cdesc" rows="5" cols="30"></textarea></td></tr>
<tr><td><input type="submit"></td><td><input type="reset"></td></tr>

</table>
</center>
</form>
<center>
<table border="1">
<caption><font size="5">College Company Display</font></caption>
<%
q="select*from collegecompany";
rs=DAO.displayRecord(q);
if(rs.next())
{	out.println("<tr><td>Campus ID</td><td>College ID</td><td>Company ID</td><td>Date</td><td>Package</td><td><td>Company Description</td><td><td>Job Description</td><td>Post Date</td><td>Student Type</td><td>Update/Delete</td></tr>");
	do
	{out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td><a href=CollegeCompanyUpDe.jsp?cid="+rs.getString(1)+">Update/Delete</a></td></tr>");                                    
		
	}while(rs.next());
}
rs.close();
%>
</table>
</center>
</body>
</html>