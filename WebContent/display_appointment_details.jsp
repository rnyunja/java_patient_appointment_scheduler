<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment Confirmation</title>
</head>
<body>
	<h1>Your appointment is successfully confirmed!</h1>
	<table>
		<tr>
			<td>Your doctor is</td> <td width="20px"><%=request.getParameter("fname")%></td>
		</tr>
		<tr>
			<td>Name</td><td> <%=request.getParameter("fname")%> <%=request.getParameter("lname")%></td>
		</tr>
		<tr>
			<td>Street Address</td><td><%=request.getParameter("address")%> <%=request.getParameter("address2")%></td>
		</tr>
		<tr>
			<td>City</td><td><%=request.getParameter("city")%></td> 
		<tr>
			<td>State</td><td><%=request.getParameter("state")%></td>
		</tr>
		<tr>
			<td>Zip Code</td><td><%=request.getParameter("zipcode")%></td>
		</tr>
				
		<tr>
			<td>Phone Number</td><td> <%=request.getParameter("phone")%></td>
		</tr>
		<tr>
			<td>Email </td><td> <%=request.getParameter("email")%></td>
		</tr>
		<tr>
			<td>Today's Date</td><td> <%=request.getParameter("today")%></td>
		</tr>
		<tr>
			<td>Reason for visit</td><td> <%=request.getParameter("apptReason")%></td>
		</tr>
		<tr>
			<td>Appointment Date</td><td> <%=request.getParameter("apptDate")%></td>
		</tr>
		<tr>
			<td>Appointment Time</td><td> <%=request.getParameter("time")%></td>
		</tr>
	</table>
</body>
</html>