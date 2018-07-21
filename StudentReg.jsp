<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<header class="site-header">
        <div class="top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <p>College Portal</p>
                    </div>
                    <div class="col-sm-6">
                        <ul class="list-inline pull-right">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i></a></li>
                            <li><a href="tel:+902222222222"><i class="fa fa-phone"></i> 7000604343</a></li>
                        </ul>                        
                    </div>
                </div>
            </div>
        </div>
       
<form action="StudentSubmit.jsp">
<center>
<table border="1">
<caption><font size="5" face="Ariel">Student Registration</font></caption>
<tr><td>Student Name</td><td><input type="text" name="sname" ></td></tr>
<tr><td> Student Date Of Birth</td><td><input type="date" name="sdob"></td></tr>
<tr><td>Student Mobile Number</td><td><input type="text" name="smob"></td></tr>
<tr><td>Student Address</td><td><textarea name="sadd" rows="5" cols="30"></textarea></td></tr>
<tr><td>Student City</td><td>
<%
 String q="select * from cityreg";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
	
	out.println("<select name=cid>");
	out.println("<option>Select City</option>");
	do
	{
	out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
	}while(rs.next());
}
rs.close();
%>
</td></tr>
<tr><td>Student Degree</td><td><input type="text" name="sdeg" ></td></tr>
<tr><td>Student Year</td><td><input type="text" name="syear" ></td></tr>
<tr><td>Student email</td><td><input type="email" name="semail" ></td></tr>
<tr><td>Student Login ID</td><td><input type="text" name="slid" ></td></tr>
<tr><td>Student Password</td><td><input type="password" name="pwd" ></td></tr>
<tr><td>Re Enter Password</td><td><input type="password" name="repwd" ></td></tr>
<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</form>
 </table>
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                
            </div>
        </div>
        <div id="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <p class="pull-left">&copy; 2017 COLLEGE PORTAL</p>
                </div>
            </div>
        </div>        
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $('.carousel[data-type="multi"] .item').each(function(){
          var next = $(this).next();
          if (!next.length) {
            next = $(this).siblings(':first');
          }
          next.children(':first-child').clone().appendTo($(this));

          for (var i=0;i<4;i++) {
            next=next.next();
            if (!next.length) {
                next = $(this).siblings(':first');
            }

            next.children(':first-child').clone().appendTo($(this));
          }
        });        
    </script>



















</body>
</html>