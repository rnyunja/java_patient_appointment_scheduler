<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<!-- Field validation. Not allowing blank fields 
-->
<script type="text/javascript" language="JavaScript">
function validateForm(event)
{
    //event.preventDefault(); // this will prevent the submit event.
    if(document.loginForm.username.value=="")
    {
      alert("User Name cannot be blank");
      document.loginForm.username.focus();
      return false;
    }
    else if(document.loginForm.password.value=="")
    {
      alert("Password cannot be blank");
      document.loginForm.password.focus();
      return false;
    }
    else {
        document.loginForm.submit();// fire submit event
    }
}
</script>

</head>

<body>
	<form name="loginForm" action="LoginController" method="post" onsubmit="return validateForm(event);">
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
												<input id="usernameId" type="text" name="username">
											</div> <br>
											<div align="center">
												<strong style="text-align: right">Password:&#32;</strong> 
												<input id="passwordId" type="password" name="password">
											</div>
											<div>
												<br />
												<br /> 
												<input id="submit" type="submit" name="submit" value="Submit">&#32; 
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
