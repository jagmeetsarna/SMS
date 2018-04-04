<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Register</title>
<style type=text/css>
body {
	background-color: #ECECEA;
}
.user{
color:white;}
</style>
</head>
<body >

	<div class="user">
		<h1 class="userPage">
			Registration
		</h1>

	</div>
	
		
			<s:form action="register" theme="simple">
			
	<table width="80%" cellspacing="0" cellpadding="0" border="0"
		align="left" height="100%" >
					
					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right">  <label for="name">Name: </label>
						</td>
						<td width="65%"><s:textfield name="name" label="name" cssClass="form-control" />
							<s:fielderror cssClass="error" fieldName="name" /></td>
					</tr>
					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right"> <label for="password">Password: </label>
						</td>
						<td width="65%"><s:password name="password" cssClass="form-control" label="password" />
							<s:fielderror cssClass="error" fieldName="password" /></td>
					</tr>

					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right"><label for="cpassword">Confirm Password: </label>
						</td>
						<td width="65%"><s:password name="cpassword"
								label="cpassword" cssClass="form-control" /> <s:fielderror cssClass="error"
								fieldName="cpassword" /></td>
					</tr>
					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right"><label for="email">Email: </label>
						</td>
						<td width="65%"><s:textfield name="email" label="Email" cssClass="form-control" /> <s:fielderror
								cssClass="error" fieldName="email" /></td>
					</tr>

					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right"><label for="address">Address: </label>
						</td>
						<td width="65%"><s:textarea name="address" cssClass="form-control" /> <s:fielderror
								cssClass="error" fieldName="address" /></td>
					</tr>
					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right"><label for="zipcode">Zipcode: </label>
						</td>
						<td width="65%"><s:textfield name="zipcode" cssClass="form-control" /> <s:fielderror
								cssClass="error" fieldName="zipcode" /></td>
					</tr>
					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right"><label for="city">City: </label>
						</td>
						<td width="65%"><s:textfield name="city" cssClass="form-control" /> <s:fielderror
								cssClass="error" fieldName="city" /></td>
					</tr>
					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right"><label for="state">State: </label>
						</td>
						<td width="65%"><s:select cssStyle="width:160px;"
								name="state" cssClass="form-control"
								list="{
'Andhra Pradesh',
'Arunachal Pradesh','Assam' ,'Bihar', 'Chhattisgarh','Goa','Gujarat','Haryana','Himachal Pradesh','Jammu and Kashmir','Jharkhand' ,'Karnataka','Kerala' ,'Madhya Pradesh','Maharashtra','Manipur','Meghalaya','Mizoram' ,'Nagaland' ,'Odisha','Punjab' ,'Rajasthan','Sikkim' ,'Tamil Nadu' ,'Tripura', 
'Uttar Pradesh' ,'Uttarakhand','West Bengal'
						}" />
							<s:fielderror cssClass="error" fieldName="state" /></td>
					</tr>

					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right"><label for="User">Assigning authority: </label>
						</td>
						<td width="65%"><s:select cssClass="form-control" cssStyle="width:155px;"
								list="{'user','admin'}" name="type" label="User"
								fieldName="user">
							</s:select></td>
					</tr>
					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 13px;"
							align="right"><label for="Course">Course Code: </label>
						</td>
						<td width="65%"><s:select cssStyle="width:155px;"
								list="{'1','2','3','4'}" cssClass="form-control" name="course" label="Course"
								fieldName="course">
							</s:select></td><tr>
						<td width="35%" style="padding-right: 20px; font-size: 10px;"
							align="right">
						
						<td width="65%"><s:submit value="Register" cssClass="btn btn-default"></s:submit></td>
					</tr>

			
			
			<td>
		
		<tr>
	
	</table>
	
	</s:form>
</body>
</html>
