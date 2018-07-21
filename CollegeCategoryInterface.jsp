 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

























<form action="CollegeCategorySubmit.jsp" class="login">
<center>
<table border="1" cellspacing="1">
<caption><font size="5">College Category Form</font></caption>
<tr><td>College Category name</td><td><input type="text" name="cname"></td></tr>
<tr><td>College Category Icon</td><td><input type="file" name="cicon"></td></tr>
<tr><td>College Category Description</td><td><textarea name="cdesc" rows="5" cols="30"></textarea></td></tr>
<tr><td><input type="submit" class="login-submit"></td><td><input type="reset"></td></tr>

</table>
</center>
</form>
<center>
<table border="1">
<caption>College Category Display</caption>
<%
try
{
	ResultSet rs=DAO.displayRecord("select*from collegecategory");
	if(rs.next())
	{
	%>
	<tr><td>Category ID</td><td>Category Name</td><td>Category Icon</td><td>Category Description</td><td>Update/Delete</td></tr>
	<%
		do
		{
			out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td><img src="+rs.getString(3)+"width=100 height=100</td><td>"+rs.getString(4)+"</td><td><a href=CollegeCategoryUpDe.jsp?cid="+rs.getString(1)+">Update/Delete</a></td></tr>");
		}while(rs.next());	
	}
	else
	{
	}
}
catch(Exception ex)
{
	out.println("Error:"+ex);
}
%>

</table>
</center>
</body>
</html>  