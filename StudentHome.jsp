<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Home</title>
</head>
<body>
<center>
<%
try
{
HttpSession ses=request.getSession(false);//to get session variable
String sid=ses.getValue("sid").toString();
String stime=ses.getValue("stime").toString();
%>
<table border="1">
<caption><font size="5">Student Home</font></caption>
<tr><td>Welcome:<%=sid %></td><td>Login Time:<%=stime%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="StudentLogout.jsp">Logout</a>
<a href="ShowAllCollegeCategory.jsp" target="aa">Show All College Category</a><br>
<a href="ShowAllCollege.jsp" target="aa">Show All College</a><br>
<a href="ShowAllCompany.jsp" target="aa">Show All Company</a><br>
<a href="SearchCollegeCompany.jsp" target="aa">Show All College Company</a><br>
<a href="SearchCollegePapers.jsp" target="aa">Search papers </a><br>
<a href="ShowEditProfile.jsp" target="aa">Show/Edit profiles </a><br>
<a href="ChangePassword.jsp" target="aa">Change Password</a><br>
</td><td><iframe name="aa" height="500" width="500"></iframe></td></tr>
<%
}
catch(Exception ex)
{
	response.sendRedirect("StudentLogin.jsp");
}%>
</table>
</center>

</body>
</html>