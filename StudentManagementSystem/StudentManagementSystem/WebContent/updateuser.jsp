<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User<s:property value="user.name" /></title>
</head>
<body>

	<table style="background:;" width="100% " cellspacing="0"
		cellpadding="0" border="0" align="center" 
		style="bottom: 0px; margin-bottom: 0px; margin: 0 auto">

		<tr>
			<td><s:form action="updatesubmit" theme="simple">

					<s:hidden name="oldEmail" value="%{user.email}"></s:hidden>
					<tr>
						<td style="font-size:15px;padding:8px;font-weight:bold"colspan="2" class="headerR" bgcolor="#660000" align="center" ><font
							color="white">Update</font></td>
					</tr>
				
					<tr>


						<td width="35%"
							style="padding-right: 20px; font-size: 13px; padding: 13px"
							align="right">Name:</td>
						<td width="65%" style="font-size: 13px"><s:textfield
								name="name" value="%{user.name}"></s:textfield></td>

					</tr>

					<tr>


						<td width="35%"
							style="padding-right: 20px; font-size: 13px; padding: 13px"
							align="right">Email:</td>
						<td width="65%" style="font-size: 13px"><s:textfield
								name="email" value="%{user.email}"></s:textfield></td>

					</tr>
					<tr>
						<td width="35%"
							style="padding-right: 20px; font-size: 13px; padding: 13px"
							align="right">Type:</td>
						<td width="65%" style="font-size: 13px"><s:select
								cssStyle="width:155px;" list="{'user','admin'}" name="type"
								label="User" fieldName="user">
							</s:select></td>

					</tr>
					<tr>
						<td width="35%"
							style="padding-right: 20px; font-size: 13px; padding: 13px"
							align="right">Address:</td>
						<td width="65%" style="font-size: 13px"><s:textarea
								name="address" value="%{user.address}"></s:textarea></td>
					</tr>
					<tr>
						<td width="35%"
							style="padding-right: 20px; font-size: 13px; padding: 13px"
							align="right">City:</td>
						<td width="65%" style="font-size: 13px"><s:textfield
								name="city" value="%{user.city}"></s:textfield></td>
					</tr>
					<tr>
						<td width="35%"
							style="padding-right: 20px; font-size: 13px; padding: 13px"
							align="right">Zipcode:</td>
						<td width="65%" style="font-size: 13px"><s:textfield
								name="zipcode" value="%{user.zipcode}"></s:textfield><s:fielderror
								cssClass="error" fieldName="zipcode" /></td>
					</tr>
					<tr>
						<td width="35%"
							style="padding-right: 20px; font-size: 13px; padding: 13px"
							align="right">State:</td>
						<td width="65%" style="font-size: 13px"><s:textfield
								name="state" value="%{user.state}"></s:textfield></td>
					</tr>
						<tr>
						<td width="35%"
							style="padding-right: 20px; font-size: 13px; padding: 13px"
							align="right">Course code:</td>
						<td width="65%" style="font-size: 13px"><s:textfield
								name="course" value="%{user.course}"></s:textfield></td>
					</tr>
				<%-- 	<td width="65%" style="font-size: 13px"><s:select
								cssStyle="width:155px;" list="{'1','2','3',''}" name="course"
								label="Course" fieldName="course">
							</s:select></td> --%>


					<tr>
						<td width="35%" style="padding-right: 20px; font-size: 10px;"
							align="right">
						<td width="65%"><s:submit value="Update" cssClass="button"></s:submit></td>
					</tr>
				</s:form>
			<td>
		<tr>
	</table>


</body>
</html>
