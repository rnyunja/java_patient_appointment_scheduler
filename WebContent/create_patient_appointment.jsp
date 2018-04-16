<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Appointment Request Form</title>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Datepicker - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$(".datepicker").datepicker();
	});
</script>
</head>
<body>
	<h1>Patient Appointment Request Form</h1>
	<form action="CreatePatientAppointmentController" method="post">
		<table style="with: 50%">
			<tr>
				<td>Select your doctor</td>
				<td><select name="doctor">
						<option value="vaughn">Dr. Patron Vaughn</option>
						<option value="brown">Dr. Jessy Brown</option>
						<option value="andrea">Dr. Kobe Andrea</option>
				</select></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="fname" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lname" /></td>
			</tr>

			<tr>
				<td>Street Address</td>
				<td><input type="text" name="address" /></td>
			</tr>
			<tr>
				<td>Address 2</td>
				<td><input type="text" name="address2" /></td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td><input type="text" name="phone" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>Today's Date</td>
				<td><input class="datepicker" type="text" name="today" /></td>
			</tr>
			<tr>
				<td>Reason for visit</td>
				<td><textarea rows="5" cols="30" name="apptReason"></textarea></td>
			</tr>
			<tr>
				<td>Appointment Date</td>
				<td><input class="datepicker" type="text" name="apptDate" /></td>
			</tr>
			<tr>
				<td>Appointment Time</td>
				<td><input type="text" name="time" /></td>
			</tr>
		</table>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>