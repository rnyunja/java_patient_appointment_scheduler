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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<!-- Date and Time picker widgets in JQuery -->
<script>
	$(function() {
		$(".datepicker").datepicker();
	});
	
	
	$(document).ready(function(){
	    $('input.timepicker').timepicker({});
	});
</script>

<!-- Field validation using AngularJS. 
-----Only allow valid and non-blank fields 
-->
<script>
var app = angular.module('appointmentApp', []);
app.controller('validateApptCtrl', function($scope) {
    $scope.doctor = '';
    $scope.fname = '';
    $scope.lname = '';
    $scope.address = '';
    $scope.address2 = '';
    $scope.city = '';
    $scope.state = '';
    $scope.zipcode = '';
    $scope.phone = '';
    $scope.email = '';
    $scope.emailFormat = /^[a-z]+[a-z0-9._]+@[a-z]+\.[a-z.]{2,5}$/;
    $scope.today = '';
    $scope.apptReason = '';
    $scope.apptDate = '';
    $scope.time = '';
});
</script>

<!-- Style for input fields interacting with user -->
<style>
input.ng-pristine, textarea.ng-pristine {
    background-color: lightblue;
}
input.ng-dirty, textarea.ng-dirty{
    background-color: pink;
}
</style> 

</head>

<!-- Recommended location for timekeeper src -->
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<body>
	<h1>Patient Appointment Request Form</h1>
	<form ng-app="appointmentApp"  ng-controller="validateApptCtrl" name="appointmentForm" action="PatientAppointmentController" method="post" novalidate>
		<table style="with: 100%">
			<tr>
				<td>Select your doctor</td>
				<td>
					<select name="doctor" ng-model="doctor" required>
						<option value="" selected disabled hidden>Choose your doctor</option>
						<option value="vaughn">Dr. Patron Vaughn</option>
						<option value="brown">Dr. Jessy Brown</option>
						<option value="andrea">Dr. Kobe Andrea</option>
					</select>
				</td>
				<td>
					<span style="color:red" ng-show="appointmentForm.doctor.$pristine || appointmentForm.doctor.$invalid">
						<span ng-show="appointmentForm.doctor.$error.required">A doctor is required.</span>
					</span>
				</td>
				
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="fname" ng-model="fname" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.fname.$pristine || appointmentForm.fname.$invalid">
						<span ng-show="appointmentForm.fname.$error.required">A valid first name required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lname" ng-model="lname" required></td>
				<td>	
					<span style="color:red" ng-show="appointmentForm.lname.$pristine || appointmentForm.lname.$invalid">
						<span ng-show="appointmentForm.lname.$error.required">A valid first name required.</span>
					</span>
				</td>
			</tr>

			<tr>
				<td>Street Address</td>
				<td><input type="text" name="address" ng-model="address" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.address.$pristine || appointmentForm.address.$invalid">
							<span ng-show="appointmentForm.address.$error.required">A valid address required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>Address 2</td>
				<td><input type="text" name="address2" ng-model="address2"></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.address2.$invalid">
							<span ng-show="appointmentForm.address2.$error.required">A valid address required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>City</td>
				<td><input type="text" name="city" ng-model="city" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.city.$pristine || appointmentForm.city.$invalid">
							<span ng-show="appointmentForm.city.$error.required">A valid city required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>State</td>
				<td><input type="text" name="state" ng-model="state" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.state.$pristine || appointmentForm.state.$invalid">
							<span ng-show="appointmentForm.state.$error.required">A valid state required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>Zip Code</td>
				<td><input type="number" name="zipcode" ng-model="zipcode" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.zipcode.$pristine || appointmentForm.zipcode.$invalid">
						<span ng-show="appointmentForm.zipcode.$error.required">A valid zip code required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td><input type="number" name="phone" ng-model="phone" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.phone.$pristine || appointmentForm.phone.$invalid">
							<span ng-show="appointmentForm.phone.$error.required">A valid phone number required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" ng-model="email" ng-pattern="emailFormat" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.email.$pristine || appointmentForm.email.$invalid || appointmentForm.email.$dirty">
							<span ng-show="appointmentForm.email.$error.required">A valid email required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>Today's Date</td>
				<td><input class="datepicker" type="text" name="today" ng-model="today" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.today.$pristine || appointmentForm.today.$invalid">
						<span ng-show="appointmentForm.today.$error.required">A valid date required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>Reason for visit</td>
				<td><textarea rows="5" cols="30" name="apptReason" ng-model="apptReason" required></textarea></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.apptReason.$pristine || appointmentForm.apptReason.$invalid">
						<span ng-show="appointmentForm.apptReason.$error.required">A valid reason required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>Appointment Date</td>
				<td><input class="datepicker" type="text" name="apptDate" ng-model="apptDate" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.apptDate.$pristine || appointmentForm.apptDate.$invalid">
						<span ng-show="appointmentForm.apptDate.$error.required">A valid appointment date required.</span>
					</span>
				</td>
			</tr>
			<tr>
				<td>Appointment Time</td>
				<td><input class="timepicker" type="text" name="time" ng-model="time" required></td>
				<td>
					<span style="color:red" ng-show="appointmentForm.time.$pristine || appointmentForm.time.$dirty || appointmentForm.time.$invalid">
						<span ng-show="appointmentForm.time.$error.required">A valid time required.</span>
					</span>
				</td>
			</tr>
		</table>
		<input name="submit" type="submit" value="Submit" 
				ng-disabled="appointmentForm.doctor.$pristine && appointmentForm.doctor.$invalid ||
							 appointmentForm.fname.$pristine && appointmentForm.fname.$invalid ||
							 appointmentForm.lname.$pristine && appointmentForm.lname.$invalid ||
							 appointmentForm.address.$pristine && appointmentForm.address.$invalid ||
							 appointmentForm.address2.$invalid ||
							 appointmentForm.city.$pristine && appointmentForm.city.$invalid ||
							 appointmentForm.state.$pristine && appointmentForm.state.$invalid ||
							 appointmentForm.zipcode.$pristine && appointmentForm.zipcode.$invalid ||
							 appointmentForm.phone.$pristine && appointmentForm.phone.$invalid ||
							 appointmentForm.today.$pristine && appointmentForm.today.$invalid ||
							 appointmentForm.apptReason.$pristine && appointmentForm.apptReason.$invalid ||
							 appointmentForm.apptDate.$pristine && appointmentForm.apptDate.$invalid ||
							 appointmentForm.time.$pristine && appointmentForm.time.$invalid"> &#32;
		<input id="reset" name="reset" type="reset" value="clear"> <br>
	</form>
</body>
</html>