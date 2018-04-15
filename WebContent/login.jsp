<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<table width="100%" border="1" cellpadding="2" cellspacing="2">
	<tr>
		<td>
			<!-- Logout.jsp starts-->
			<!-- Logout.jsp ends-->

			<table width="100%" height="267" border="1">
				<tr>
					<td height="261">

						<table width="100%" height="100" border="1" cellpadding="0" cellspacing="0">
							<form action="LoginController" method="post">
								<tr>
	
									<td height="10" align="center" bgcolor="#CCCCCC"><font size="+3" color="#99CCCC">Patient Login Page</font></td>
								</tr>
								<tr>
									<td height="235" align="center" bgcolor="#CCCCCC">
										<p>
											<strong>User Name ::</strong> 
											<input id="usernameId" type="text" name="username">
										</p>
										<p>
											<strong>Password &nbsp;&nbsp;&nbsp;::</strong> <input id="passwordId" type="password" name="password">
											<br/><br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input id="submit" type="submit" name="Submit" value="Submit"> &nbsp;&nbsp;&nbsp;
											<input id="reset"  name="reset" type="reset" value="clear"> <br>
									</td>
								</tr>
							</form>
						</table>

					</td>
				</tr>
			</table>

		</td>
	</tr>
</table>

</body>
</html>