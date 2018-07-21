<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
HttpSession ses=request.getSession(false);//to get session variable
String sid=ses.getValue("sid").toString();
String stime=ses.getValue("stime").toString();
ses.invalidate();
response.sendRedirect("StudentLogin.jsp");
}
catch(Exception ex)
{
	response.sendRedirect("StudentLogin.jsp");
}
%>
</body>
</html>