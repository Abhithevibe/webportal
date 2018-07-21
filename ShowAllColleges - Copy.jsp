 1<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="bs.dao.*" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show all Colleges </title>
</head>
<body>
<center>
<table border="1">
<caption><font size="5">Display All Colleges/Search All Colleges</font></caption>
<%
try
{	HttpSession ses=request.getSession(false);//to get session variable
String sid=ses.getValue("sid").toString();
String stime=ses.getValue("stime").toString();
}
catch(Exception ex)
{
response.sendRedirect("StudentLogin.jsp");
}
try{
	String ccid=request.getParameter("ccid");
	String cn=request.getParameter("cn");
	String q="select*from collegecategory";
	
			
	ResultSet rs=DAO.displayRecord(q);
	if(rs.next())
	{out.prntln("<select name=ccid");
	do
	{
		out.println("<option value=> "+rs.getString(1)+">"+rs.getString(2)+"</option>");
	}while(rs.next());
	out.println("</select>");
	}
	rs.close();
%>		
	<input type="text" name="cn" placeholder="College Name"><input type="submit" value="Search">
	<table border="1">
<%	if((ccid.equals("null")||ccid.equals(null)&&(cn.equals("null")||cn.equals(null))))
	q="select*from collegecategory cc,collegereg c where cc.ccid=c.ccid";
	else if((!ccid.equals("null")||!ccid.equals(null)&&(cn.equals("null")||cn.equals(null))))
	q="select*from collegecategory cc,collegereg c where cc.ccid=c.ccid and cc.ccid='"+ccid+"'";
	else if((ccid.equals("null")||ccid.equals(null)&&(!cn.equals("null")||!cn.equals(null))))
	q="select*from collegecategory cc,collegereg c where cc.ccid=c.ccid and cname like %"+cn+"%";
	else
	q="select*from collegecategory cc,collegereg c where cc.ccid=c.ccid and cc.ccid='"+ccid+"' and cname like '%"+cn+"%'";
	
	rs=DAO.displayRecord(q);
	if(rs.next())
	{
		do
		{
			out.printn("<tr><td>Category ID:"+rs.getString(1)+"<br>Caategory Name:"+rs.getString(2)+"</td><td><font size=5>"+rs.getString(7)+"("+rs.getString(5)+")</font><br>Type:<b><i>"+rs.getString(15)+"</i></b><br>"+rs.getString(12)+"<br>"+rs.getString(13)+"<br>"+rs.getString(14)+"</td><td><img src="+rs.getString(8)+" height=100 width=100></td><td>"+rs.getString(9)+"<br>"+rs.getString(10)+"<br>"+rs.getString(10)+"<br>"+rs.getString(11)+"<br>"+rs.getString(16)+"</td></tr>");
		}while(rs.next());
	}
	else
	{
		
	}
}
catch(Exception ex)
{
	out.println("error:"+ex);
}
%>	
	</table>
	
</center>
</body>
</html>