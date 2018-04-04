<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>
<style type=text/css>
font-size: 10px ;
tr, td {
	padding: 5px;
}
</style>
<script>
	
</script>
<title>Students</title>
</head>
<body>
	<div class="user">
		<h1 class="userPage">
			Students Details <span class="span"></span>
		</h1>
	</div>
		<s:form  action="searchStudent" theme="simple">
			<s:textfield name="name"  />
			<s:submit value="Search" ></s:submit>
			
			
	
		

	<table width="60%" cellspacing="0" cellpadding="0" border="0"
		align="center" height="60%"
		style="bottom: 0px; margin-bottom: 0px; border: 1px solid black; border-collapse: collapse;">
	

		<tr style="border: 1px solid black; border-collapse: collapse;">
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><b>User
					ID:</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><b>Name:</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><b>Email</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><b>User
					Role</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><b>Address</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><b>City</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><b>Delete
					Student</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><b>Update
					Student</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><b>Attendance</b></td>
		</tr>

		<s:iterator value="list">
			<tr style="border: 1px solid black; border-collapse: collapse;">
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><s:property
						value="id" /></td>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><s:property
						value="name" /></td>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><s:property
						value="email" /></td>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><s:property
						value="userRole" /></td>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><s:property
						value="address" /></td>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><s:property
						value="city" /></td>
				<s:url var="delete" action="deletestudent">
					<s:param name="userId">
						<s:property value="id" />
					</s:param>
				</s:url>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><a
					href=${delete}>Delete</a></td>
				<s:url var="update" action="updatestudent">
					<s:param name="userId">
						<s:property value="id" />
					</s:param>
				</s:url>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><a
					href=${update}>Update</a></td>
				<s:url var="attendance" action="attendance">
					<s:param name="userId">
						<s:property value="id" />
					</s:param>
				</s:url>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;"><a
					href=${attendance}>Attendance</a></td>
			</tr>
		
		</s:iterator>

	</table>
	</s:form>
		
</body>
</html>
