<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Attendance</title>
<style type=text/css>
div{
text-align:center;
padding-bottom:5px;
}
</style>
</head>
<body>
	<s:form action="saveAttendance" theme="simple">
		<table style="background-color: #f1f1f1;" width="100% "
			cellspacing="0" cellpadding="0" border="0" align="center"
			style="bottom: 0px; margin-bottom: 0px; margin: 0 auto">

			<tr>
				<td style="font-size: 18px; padding: 8px" colspan="2"
					class="headerR" bgcolor="#660000" align="center"><font
					color="white">Attendance</font></td>
			</tr>
			<s:hidden name="id" value="%{user.id}"></s:hidden>
			<s:hidden name="name" value="%{user.name}"></s:hidden>
			<tr>
				<td width="35%"
					style="padding-right: 10px; font-size: 15px; padding: 13px; font-weight: bold"
					align="right">Name:</td>
				<td width="65%" style="font-size: 14px"><s:property
						value="user.name" /></td>
			</tr>
			<tr>
				<td width="35%"
					style="padding-right: 10px; font-size: 15px; padding: 13px; font-weight: bold"
					align="right">Email:</td>
				<td width="65%" style="font-size: 14px"><s:property
						value="user.email" /></td>
			</tr>
			<tr>
				<td width="35%"
					style="padding-right:10px; font-size: 15px; padding: 13px; font-weight: bold"
					align="right">ID:</td>
				<td width="65%" style="font-size: 14px"><s:property
						value="user.id" /></td>
			</tr>
			
		

		</table>
		<div>
		<s:radio label="Attendance" name="attendance"
						list="#{'1':'Present','0':'Absent'}" value="1" /><br><br>
		<s:submit value="Attendance"></s:submit>
		</div>
	</s:form>
</body>
</html>