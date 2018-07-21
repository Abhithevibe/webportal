<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Registration form</title>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Company Name</title>
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600&amp;subset=latin-ext" rel="stylesheet">
    
    <link href="mytemplate/css/bootstrap.min.css" rel="stylesheet">
    <link href="mytemplate/css/font-awesome.min.css" rel="stylesheet">
    <link href="mytemplate/style.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<form action="CollegeSubmit.jsp">
<center>
<table border="1">
<caption><font size="5">CollegeRegForm</font></caption>
<tr><td>College Category Name</td><td>
<%
String q="select*from collegecategory";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
	out.println("<select name=ccid>");
	out.println("<option>-Select College Category-</option>");
	do
	{
		out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
	}while(rs.next());
out.println("</select>");
}
rs.close();
%>
</td></tr>
<tr><td>Company ID</td><td><input type="text" name="ccid"></td></tr>
<tr><td>College Name</td><td><input type="text" name="cname"></td></tr>
<tr><td>College Logo</td><td><input type="file" name="clogo"></td></tr>
<tr><td>College Address</td><td><textarea name="cadd" rows="5" cols="30"></textarea></td></tr>
<tr><td>College Pin</td><td><input type="number" name="cpin"></td></tr>
<tr><td>College City</td><td>
<%
q="select*from cityreg";
rs=DAO.displayRecord(q);
if(rs.next())
{
	out.println("<select name=cid");
	out.println("<option>-Select City-</option>");
	do
	{
		out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
	}while(rs.next());
	out.println("</select>");
}

%>
</td></tr>
<tr><td>College Contact Number</td><td><input type="number" name="cno"></td></tr>
<tr><td>College Mail-ID</td><td><input type="email" name="ceid"></td></tr>
<tr><td>College Website</td><td><input type="text" name="cweb"></td></tr>
<tr><td>College Type</td><td><input type="radio" name="govt">Govt<input type="radio" name="semi-govt">Semi Govt<input type="radio" name="private">Private</td></tr>
<tr><td>College Description</td><td><textarea name="cdesc" rows="5" cols="30"></textarea></td></tr>
<tr><td>College Pin</td><td><input type="number" name="cpin"></td></tr>
<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</table>
</form>
<form action="CollegeRegistrationUpDe.jsp">
<table border="1">
<%
try
{
	rs=DAO.displayRecord("select*from collegereg");
	if(rs.next())
	{
	%>
	<tr><td>Company ID</td><td>College Name</td><td>College Logo</td><td>College Address</td><std>College Pin</td><td>College City</td><td></td><td>College Contact Number</td><td>College E-Mail</td><td>College Website</td><td>College Type</td>College Description<td>Update/Delete</td></tr>
<%
do
	{
	out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td><img src="+rs.getString(3)+"width=100 height=100</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td><td><a href=CollegeRegistrationUpDe.jsp?cid="+rs.getString(1)+">Update/Delete</a></td></tr>");
	}while(rs.next());	
	}
	else
	{
	}
	rs.close();
}
catch(Exception ex)
{
	out.println("Error:"+ex);
}%>

</center>
</table>
</form>
</body>
</html>