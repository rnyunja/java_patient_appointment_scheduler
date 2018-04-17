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
			<td>Your doctor is <%=request.getParameter("fname")%></td>
		</tr>
		<tr>
			<td>Name : <%=request.getParameter("fname")%> <%=request.getParameter("lname")%></td>
		</tr>
		<tr>
			<td>Street Address : <%=request.getParameter("address")%> <%=request.getParameter("address2")%></td>
		</tr>
		<tr>
			<td>City : <%=request.getParameter("city")%> 
				State : <%=request.getParameter("state")%>
				Zip Code : <%=request.getParameter("zipcode")%>
				</td>
		</tr>
		<tr>
			<td>Phone Number : <%=request.getParameter("phone")%></td>
		</tr>
		<tr>
			<td>Email : <%=request.getParameter("email")%></td>
		</tr>
		<tr>
			<td>Today's Date : <%=request.getParameter("today")%></td>
		</tr>
		<tr>
			<td>Reason for visit : <%=request.getParameter("apptReason")%></td>
		</tr>
		<tr>
			<td>Appointment Date : <%=request.getParameter("apptDate")%></td>
		</tr>
		<tr>
			<td>Appointment Time : <%=request.getParameter("time")%></td>
		</tr>
	</table>
</body>
</html>