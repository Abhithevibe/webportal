<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Category Update/Delete</title>
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
 <%
 String cid=request.getParameter("cid");
 String q="select*from collegecategory where ccid='"+cid+"'";
 ResultSet rs=DAO.displayRecord(q);
 if(rs.next())
 {
 %>
 <form action="CollegeCategoryUpDe1.jsp">
 <center>
 <table border="1">
 <caption>College Category Update/Delete Form</caption>
 <tr><td>College Category ID</td><td><input type="text" name="cid" value="<%=rs.getString(1)%>"readonly="true"></td></tr>
 <tr><td>College Category name</td><td><input type="text" name="cname" value="<%rs.getString(2);%>"></td></tr>
 <tr><td>College Category Icon</td><td><img src="<%rs.getString(3);%>" height="100" width="100"><input type="file" name="cicon"></td></tr>
 <tr><td>College Category Description</td><td><textarea name="cdesc" rows="5" cols=30"><%=rs.getString(4) %></textarea><td></td></tr>
<tr><td><input type="submit" name="btn" value="Update"></td><td><input type="submit" name="btn" value="Delete"></td></tr> 
 </table>
 </center>
 <%
 }
 %>
 </form>
</body>
</html>