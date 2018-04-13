<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Appointment Request Form</title>
</head>
<body>
	<h1>Patient Appointment Request Form</h1>
	<form action="AppointmentController" method="post">
	
<!-- 	<div id="wufoo-z19lmt5m1d4gk9d">
Fill out my <a href="https://spookey.wufoo.com/forms/z19lmt5m1d4gk9d">online form</a>.
</div>
<div id="wuf-adv" style="font-family:inherit;font-size: small;color:#a7a7a7;text-align:center;display:block;">The easy to use <a href="http://www.wufoo.com/form-builder/">Wufoo form builder</a> helps you make forms easy, fast, and fun.</div>
<script type="text/javascript">var z19lmt5m1d4gk9d;(function(d, t) {
var s = d.createElement(t), options = {
'userName':'spookey',
'formHash':'z19lmt5m1d4gk9d',
'autoResize':true,
'height':'1154',
'async':true,
'host':'wufoo.com',
'header':'show',
'ssl':true};
s.src = ('https:' == d.location.protocol ? 'https://' : 'http://') + 'www.wufoo.com/scripts/embed/form.js';
s.onload = s.onreadystatechange = function() {
var rs = this.readyState; if (rs) if (rs != 'complete') if (rs != 'loaded') return;
try { z19lmt5m1d4gk9d = new WufooForm();z19lmt5m1d4gk9d.initialize(options);z19lmt5m1d4gk9d.display(); } catch (e) {}};
var scr = d.getElementsByTagName(t)[0], par = scr.parentNode; par.insertBefore(s, scr);
})(document, 'script');</script> -->

	
				<table style="with: 50%">
					<tr>
						<td>Select your doctor</td>
						<td><select name="doctor">
						    <option value="vaughn">Dr. Patron Vaughn</option>
						    <option value="brown">Dr. Jessy Brown</option>
						    <option value="andrea">Dr. Kobe Andrea</option>
						  </select>
						  </td>
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
						<td><input type="text" name="today" /></td>
					</tr>
					<tr>
						<td>Reason for visit</td>
						<td><textarea rows="5" cols="30" name="apptReason"></textarea></td>
					</tr>
					<tr>
						<td>Appointment Date</td>
						<td><input type="text" name="apptDate"/></td>
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