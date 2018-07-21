 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search papers</title>
</head>
<body>
<form action="SearchCollegeCompanyPaper.jsp">
<%
//start get session
try
{
HttpSession ses=request.getSession(false);//to get session variable
String sid=ses.getValue("sid").toString();
String stime=ses.getValue("stime").toString();
}
catch(Exception ex)
{
	response.sendRedirect("StudentLogin.jsp");
}
///end session
try
{
	String comid=request.getParameter("comid");
	String colid=request.getParameter("colid");
	String q="select*from collegereg";
	ResultSet rs=DAO.displayRecord(q);
	if(rs.next())
	{
		out.println("<select name=colid>");
		do
		{
			out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
		}while(rs.next());
		out.println("</select>");
	}
rs.close();

q="select*from companyreg";
rs=DAO.displayRecord(q);
if(rs.next())
{
	out.println("<select name=comid>");
	do
	{
		out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
	}while(rs.next());
rs.close();
%>
<input type="submit" value="Search">
</form>
<table border="1">
<%
//	out.println("CCID:"+ccid" and CN:"+cn");
q="select * from collegereg cl,companyreg cm,collegecompanypaper ccp where ccp.colid=cl.cid and ccp.colid=cl.cid and ccp.comid=cm.cid and ccp.comid='"+comid+"' and ccp.colid='"+colid+"'";
//ouqt.println(q);
rs=DAO.displayRecord(q);
if(rs.next())
{
	do
	{ 
		out.println("<tr><td>College ID:"+rs.getString(1)+"<br>College Name "+rs.getString(3)+"</td><td>Company ID:"+rs.getString(13)+"<br>College Name:"+rs.getString(15)+"</td><td>Paper ID:"+rs.getString(24)+"<br>Degree:"+rs.getString(27)+"<br>Branch:"+rs.getString(28)+"<br>Year:"+rs.getString(29)+"<br>TechPaper:"+rs.getString(30)+"<br>Non TechPaper:"+rs.getString(31)+"<br>Interview Paper:"+rs.getString(32)+"<br>TotalPrice:"+rs.getString(33)+"<br>Post Date:"+rs.getString(34)+"<br><a href=BuyPaper.jsp?pd="+rs.getString(31)+">Buy Now</a></td></tr>");                   
	}while(rs.next());
}
else
{
	
}
}
}
catch(Exception ex)
{
	
}
%>
</table>
</body>
</html>