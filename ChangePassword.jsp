<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
</head>
<body>
<form action="ChangePassword1.jsp">
<%
HttpSession ses=request.getSession(false);//to get session variable
String sid=ses.getValue("sid").toString();
String stime=ses.getValue("stime").toString();
%>
<tr><td>Old password</td><td><input type="text" value="opwd"></td></tr>
<tr><td>New password</td><td><input type="text" value="npwd"></td></tr>
<tr><td>Re-enter new password</td><td><input type="text" value="rnpwd"></td></tr>
<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</form>
</body>
</html>