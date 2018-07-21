<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<table border="1">
<caption><font size="5">College Company Update/Delete</font></caption>
<%
try{
	String cid=request.getParameter("cid");
	String q="select*from collegecompany where colcomid='"+cid+"'";
	ResultSet rs=DAO.displayRecord(q);
	if(rs.next())
	{
	%>
<tr><td>Campus ID</td><td><input type="text" name="colcomid" value="<%=rs.getString(1)%>"readonly="true"></td></tr>
<tr><td>College ID</td><td><input type="text" name="colid" value="<%=rs.getString(2)%>"></td></tr>
<tr><td>Company ID</td><td><input type="text" name="comid" value="<%=rs.getString(3)%>"></td></tr>
<tr><td>Date</td><td><input type="date" name="dt" value="<%=rs.getString(4)%>"></td></tr>
<tr><td>Job Description</td><td><textarea name="jdesc" rows="5" cols="30"><%=rs.getString(5) %></textarea><td></td></tr>
<tr><td>Company Description</td><td><textarea name="cdesc" rows="5" cols="30"><%=rs.getString(6) %></textarea><td></td></tr>
	<%
	String stty=rs.getString(9);
	if(stty.equals("running"))
	{
	%>
	<tr><td>Student Type</td><td><input typ="radio" name="st" value="running" checked>Running<input typ="radio" name="st" value="passout" >Passout</td></tr>
	<%	
	}
	else
	{
	%>
    <tr><td>Student Type</td><td><input typ="radio" name="st" value="running" >Running<input typ="radio" name="st" value="passout" checked>Passout</td></tr>
	<%
	}
	}
    }
	catch(Exception ex)
{
		out.println("Error:"+ex);
}
%>
catch(Exception ex)
{
	
}
%>
</table>
</center>
</body>
</html>