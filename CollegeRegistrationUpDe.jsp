<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Category Update/Delete</title>
</head>
<body>
<%
String cid=request.getParameter("cid");
String q="select*from collegereg where cid='"+cid+"'";
out.println(q);
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
%>
<form action="CollegeRegistrationUpDe1.jsp">
 <center>
 <table border="1">
 <caption>College Registration Update/Delete Form</caption>
 <tr><td>Company ID</td><td><input type="text" name="cid" value="<%=rs.getString(1)%>"readonly="true"></td></tr>
 <tr><td>College name</td><td><input type="text" name="cname" value="<%rs.getString(2);%>"></td></tr>
 <tr><td>College Logo</td><td><img src="<%rs.getString(3);%>" height="100" width="100"><input type="file" name="clogo"></td></tr>
 <tr><td>College Address</td><td><textarea name="cadd" rows="5" cols=30"><%=rs.getString(4) %></textarea><td></td></tr>
 <tr><td>College pin</td><td><input type="number" name="cpin" value="<%rs.getString(5);%>"></td></tr>
<tr><td>College City</td><td><input type="text" name="ccty" value="<%rs.getString(6);%>"></td></tr>
<tr><td>College Contact Number</td><td><input type="number" name="ccno" value="<%rs.getString(7);%>"></td></tr>
<tr><td>College e-mail</td><td><input type="email" name="ceid" value="<%rs.getString(8);%>"></td></tr>
<tr><td>College Website</td><td><input type="text" name="cweb" value="<%rs.getString(9);%>"></td></tr>
<tr><td>College Type</td><td><input type="text" name="ctype" value="<%rs.getString(10);%>"></td></tr>
<tr><td>College Description</td><td><textarea name="cdesc" rows="5" cols=30"><%=rs.getString(11) %></textarea><td></td></tr>
<tr><td><input type="submit" name="btn" value="Update"></td><td><input type="submit" name="btn" value="Delete"></td></tr> 
 </table>
 </center>
 <%
 }
 %>
</form>
</body>
</html>