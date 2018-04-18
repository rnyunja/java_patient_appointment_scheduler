<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


<!-- Field validation using AngularJS. 
-----Only allow valid and non-blank fields 
-->
<script>
var app = angular.module('loginApp', []);
app.controller('validateLoginCtrl', function($scope) {
    $scope.username = '';
    $scope.password = '';
});
</script>

<style>
input.ng-pristine {
    background-color: lightblue;
}
input.ng-dirty {
    background-color: pink;
}
</style> 

</head>

<body>
	<form ng-app="loginApp"  ng-controller="validateLoginCtrl" name="loginForm" action="LoginController" method="post" novalidate>
		<table
			style="width: 100%; border: 1; cellpadding: 2px; cellspacing: 2; vertical-align: middle;">
			<tr>
				<td>
					<table width="100%" height="267" border="1">
						<tr>
							<td height="261">

								<table width="100%" height="100" border="1" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="10" align="center" bgcolor="#CCCCCC"><font
											size="+3" color="#000000">Patient Login</font></td>
									</tr>
									<tr>
										<td height="200" align="center" bgcolor="#CCCCCC">
											<div align="center">
												<strong style="text-align: right">User Name:</strong> 
												<input class="username" id="usernameId" type="text" name="username" ng-model="username" required>
												<span style="color:red" ng-show="loginForm.username.$pristine || loginForm.username.$invalid">
													<span ng-show="loginForm.username.$error.required">A valid User name required.</span>
												</span>
											</div>
											<br />
											<div align="center">
												<strong style="text-align: right">Password:&#32;</strong> 
												<input class="password" id="passwordId" type="password" name="password" ng-model="password" required>
												<span style="color:red" ng-show="loginForm.password.$pristine || loginForm.password.$invalid">
													<span ng-show="loginForm.password.$error.required">A valid Password required.</span>
												</span>
											</div>
											<div>
												<br />
												<br /> 
												<input id="submit" type="submit" name="submit" value="Login"
														ng-disabled="loginForm.username.$pristine && loginForm.username.$invalid &&
														loginForm.password.$pristine && loginForm.password.$invalid">&#32;
														 
												<input id="reset" name="reset" type="reset" value="clear"> <br>
											</div>
										</td>
									</tr>

								</table>

							</td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
	</form>
</body>
</html>
