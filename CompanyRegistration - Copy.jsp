	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company Registration form</title>
</head>
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
<body>
<form action="CompanySubmit.jsp">
<center>
<table border="1">
<caption><font size="5">CompanyRegForm</font></caption>
<tr><td>Company Category Name</td><td>
<%
String q="select*from companycategory";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
	out.println("<select name=ccid>");
	out.println("<option>-Select Company Category-</option>");
	do
	{
		out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
	}while(rs.next());
out.println("</select>");
}
rs.close();
%>
</td></tr>
<tr><td>Company Name</td><td><input type="text" name="cname"></td></tr>
<tr><td>Company Logo</td><td><input type="file" name="clogo"></td></tr>
<tr><td>Company Address</td><td><textarea name="cadd" rows="5" cols="30"></textarea></td></tr>
<tr><td>Company Pin</td><td><input type="number" name="cpin"></td></tr>
<tr><td>Company City</td><td>
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
<tr><td>Company Contact Number</td><td><input type="number" name="cno"></td></tr>
<tr><td>Company Mail-ID</td><td><input type="email" name="ceid"></td></tr>
<tr><td>Company Website</td><td><input type="text" name="cweb"></td></tr>
<tr><td>Company Type</td><td><input type="radio" name="it">IT<input type="radio" name="mech">Mechanical<input type="radio" name="med">Medical</td></tr>
<tr><td>Company Description</td><td><textarea name="cdesc" rows="5" cols="30"></textarea></td></tr>
<tr><td>Company Pin</td><td><input type="number" name="cpin"></td></tr>
<tr><td><input type="submit"></td><td><input type="reset"></td></tr>

</table>
</form>
</center>
</body>
</html>