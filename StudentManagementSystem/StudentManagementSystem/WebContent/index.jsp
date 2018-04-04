<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Dosis'
	rel='stylesheet' type='text/css'>
<script>
	function registerUser() {

		window.location = "${pageContext.request.contextPath}/registerAction";
		return false;
	}
</script>


<title>Login Page</title>
<style type=text/css>
body {
	background-color: #ECECEA;
}
</style>
</head>
<body style="margin: 0px; padding: 0px;" bgcolor="#ffffff">


	<table width="100%" height="100%" border="1" cellspacing=""
		cellpadding="0" align="center"
		style="border-collapse: collapse; border-color: #660000; bottom: 0px; margin-bottom: 0px">
		<tr style="margin-bottom: 0px;">
			<td height="100%" style="margin-bottom: 0px;">

				<table width="100%" cellspacing="0" cellpadding="0" border="0"
					align="center" height="100%"
					style="bottom: 0px; margin-bottom: 0px">
					<tr>
						<td height="60" valign="top" class="headbg">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="17%"><img src="images/logo.gif" width="165"
										height="60" /></td>
									<td width="32%"><span class="greatIdea">Excellence
											in Education... </span></td>

								</tr>
							</table>
						</td>
					</tr>
					<tr height="100%">
						<td valign="middle" align="center">

							<table width="50%" border="1" cellspacing="0" cellpadding="5px"
								style="border-collapse: collapse; border-color: #660000">
								<s:form name="myform" action="loginAction" theme="simple">
									<tr>
										<td colspan="2" class="header" bgcolor="#660000"
											align="center"><font color="white">Sign in</font></td>
									</tr>
									<tr>
										<td width="35%" style="padding-right: 25px; font-size: 13px;"
											align="right">User ID: <span class="required">*</span>
										</td>
										<td width="65%"><s:textfield name="loginBean.username"
											cssClass="form-control"	label="Username" placeholder="Enter your Name"  /> <s:fielderror cssClass="errmsg"
												fieldName="loginBean.username" /></td>
									</tr>
									<tr>
										<td style="padding-right: 25px; font-size: 13px;"
											align="right">Password: <span class="required">*</span>
										</td>
										<td><s:password name="loginBean.password"
											cssClass="form-control"	label="Password" placeholder="Enter your Password" /> <s:fielderror cssClass="errmsg"
												fieldName="loginBean.password" /></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><s:submit value="Login"
												cssClass="btn btn-default btn-block">
											</s:submit></td>
									</tr>	</s:form>
								<tr>
						<td colspan="2" align="center"><s:submit type="button" value="Register"
						cssClass="btn btn-default btn-block"
								onclick="registerUser();" /></td>
					</tr>	
								
							</table>
						</td>
					</tr>
					
					<!-- <tr height="48px" style="padding-bottom: 0px">
						<td class="botbg" height="48" bgcolor="#660222"><img
							src="images/bottom_icon.gif" /></td>
					</tr> -->
				</table>

			</td>
		</tr>
	</table>

</body>

</html>