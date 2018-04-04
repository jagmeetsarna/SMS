<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Profile</title>
<style type=text/css>
body {
	background-color: #ECECEA;
}
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
   /*  padding: 12px 16px; */
}

.dropdown:hover .dropdown-content {
    display: block;
}

</style>
</head>
<body>

	<div class="user">
		<h1 class="userPage">
			My Profile 
		</h1>

	</div>
	<div class="dropdown">
<button class="w3-btn w3-red w3-text-shadow"><b>Home</b></button>
  <div class="dropdown-content">
    <ul>
		<s:url var="aboutUser" action="aboutyou">
			<s:param name="emailId">
				<s:property value="#session.email" />
			</s:param>
		</s:url>
		<s:url var="worksheet" action="worksheet">
			<s:param name="emailId">
				<s:property value="#session.email" />
			</s:param>
		</s:url>
		<s:url var="coursedetails" action="coursedetails">
			<s:param name="emailId">
				<s:property value="#session.email" />
			</s:param>
		</s:url>
		<s:url var="attendance" action="showAttendance">
			<s:param name="userId">
				<s:property value="#session.id" />
			</s:param>
		</s:url>
		<s:url var="feedback" action="feedbackForm">
			<s:param name="emailId">
				<s:property value="#session.email" />
			</s:param>
		</s:url>
		<li><a href="${aboutUser}">My Profile</a></li>
		<!-- 	<li><a href="calender">My Calender</a></li> -->
		<li><a href="${worksheet}">My APW Worksheet</a></li>
		<li><a href="${coursedetails}">Course</a></li>
		<li><a href="${attendance}">Attendance</a></li>
		<li><a href="${feedback}">Feedback</a></li>

	</ul>
    
  </div>
  </div> 
	
	<table style=margin:/* "background-color:#f1f1f1;" */ width="100%" cellspacing="0" cellpadding="0" border="0"
		align="center"  >

		
		
		<tr>
			<td width="35%"
				style="padding-right: 20px; font-size: 15px; padding: 13px;font-weight:bold"
				align="right" >Name:</td>
			<td width="65%" style="font-size: 14px"><s:property
					value="user.name" /></td>
		</tr>
		<tr>
			<td width="35%"
				style="padding-right: 20px; font-size: 15px; padding: 13px;font-weight:bold"
				align="right">Email:</td>
			<td width="65%" style="font-size: 14px"><s:property
					value="user.email" /></td>
		</tr>
		<tr>
			<td width="35%"
				style="padding-right: 20px; font-size: 15px; padding: 13px;font-weight:bold"
				align="right">Type:</td>
			<td width="65%" style="font-size: 14px"><s:property
					value="user.userRole" /></td>
		</tr>
		<tr>
			<td width="35%"
				style="padding-right: 20px; font-size: 15px; padding: 13px;font-weight:bold"
				align="right">Address:</td>
			<td width="65%" style="font-size: 14px"><s:property
					value="user.address" />  <br><s:property
					value="user.city" /> <s:property
					value="user.state" />  </td>
		</tr>

			<tr>
			<td width="35%"
				style="padding-right: 20px; font-size: 15px; padding: 13px;font-weight:bold"
				align="right">Course:</td>
			<td width="65%" style="font-size: 14px"><s:property
					value="user.course" /></td>
		</tr>
		

	</table>
<%-- <div class="aboutyoupostion">
<ul>
<s:url var="aboutUser" action="aboutyou">
  <s:param name="emailId"><s:property value="user.email" /></s:param>
</s:url>
<li ><a  href="${aboutUser}">My Profile</a></li>
<li ><a  href="calender.jsp">My Calender</a></li>
<li ><a  href="academic.jsp">My APW Worksheet</a></li>

</ul>

</div>
 --%>

</body>
</html>
