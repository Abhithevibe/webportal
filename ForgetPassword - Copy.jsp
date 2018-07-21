<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bs.dao.*" %>
     <%@ page import="bs.db.*" %>
   
     <%@ page import="java.sql.*" %>
     <%@ page import="java.util.Properties"%>
	<%@ page import="javax.mail.Authenticator"%>
	<%@ page import="javax.mail.PasswordAuthentication"%>
	<%@ page import="javax.mail.Session"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ForgetPassword.jsp">
<center>
<table border="1">
<caption>Forget Password</caption>
<tr><td>Enter Login ID</td><td><input type="text" name="lid" placeholder="Enter Login ID"></td></tr>
<tr><td><input type="submit" value="Get Password"></td><td><input type="reset"></td></tr>
</table>
</center>
</form>




<%
try
{

	
	
final String fromEmail = "projectsmy2017@gmail.com"; //requires valid gmail id
final String password = "project2017"; // correct password for gmail id
final String toEmail = "guptapriyank87@gmail.com"; // can be any email id

//System.out.println("TLSEmail Start");
Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
props.put("mail.smtp.port", "587"); //TLS Port
props.put("mail.smtp.auth", "true"); //enable authentication
props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS

        //create Authenticator object to pass in Session.getInstance argument
Authenticator auth = new Authenticator()
{
	//override the getPasswordAuthentication method
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(fromEmail, password);
	}
};
Session session1 = Session.getInstance(props, auth);
DAO.sendEmail(session1, toEmail,"Your Password", "Password is: 1234");
}
catch(Exception ex)
{
out.println("Error: "+ex);	
}
%>
</body>
</html>