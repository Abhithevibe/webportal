<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking</title>
</head>
<body>
<center>
<form action="booking.jsp">
<caption>Book ticket</caption>
<table border="1">
<tr><td>Select City</td><td><select name="Stnname">
  <option value="New Delhi">New Delhi</option>
  <option value="Mumbai">Mumbai</option>
  <option value="Kolkata">Kolkata</option>
  <option value="Chennai">Chennai</option>
</select>
</td></tr>
<tr><td>Seat(0-20)</td><td><input type="text" name="sno"></td></tr>
<tr><td><input type="submit" value="book"></td></tr>
</table>
</form>
</center>	
</body>
</html>