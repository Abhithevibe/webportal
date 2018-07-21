<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
</head>
<body>
<%
try
	{String optn=request.getParameter("Stnname");
	 String sno=request.getParameter("sno");
	 String status="O";
	 if(sno.equals("null")||status.equals("O"))
		{
		 out.println("Select different seart number.");
		}
	else
		{
			String q="insert into ticket(Station,SeatNo.,Status)values('"+optn+"','"+sno+"','"+status+"')";
			String res=DAO.updateRecord(q);
			if(res.equals("yes"))
			{
					out.println("Ticket Booked");
					
			}
			else
			{
					out.println("Ticket not Booked");
			}
	  	}
	 }
catch(Exception ex)
{
out.println("Error:"+ex);
}
%>
</body>
</html>