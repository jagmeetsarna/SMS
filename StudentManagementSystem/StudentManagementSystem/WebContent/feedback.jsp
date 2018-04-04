<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<link rel="stylesheet" type="text/css" href="css/basic.css">  
<style type=text/css>
body{
margin:0 auto;
background-color: #ECECEA;
font-family: Verdana, Geneva, sans-serif;
}
td {
	font-family: Arial, Helvetica, sans-serif;
	padding:10px;
}

th {
	font-family: Arial, Helvetica, sans-serif;
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
			Feedback
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
		<%-- <s:url var="feedback" action="feedbackForm">
			<s:param name="emailId">
				<s:property value="#session.email" />
			</s:param>
		</s:url> --%>
		<li><a href="${aboutUser}">My Profile</a></li>
		<!-- 	<li><a href="calender">My Calender</a></li> -->
		<li><a href="${worksheet}">My APW Worksheet</a></li>
		<li><a href="${coursedetails}">Course</a></li>
		<li><a href="${attendance}">Attendance</a></li>
		<li><a href="${feedback}">Feedback</a></li>

	</ul>
    
  </div>
  </div> 
	
	<table width="100%" cellspacing="0" cellpadding="0" border="0"
		align="center" height="100%">

	<s:form action="feedback" theme="simple">
			
			
	
			<s:hidden name="id" value="%{user.id}"></s:hidden>
			<s:hidden name="name" value="%{user.name}"></s:hidden>
		<%-- 	<tr>
				<td width="35%"
					style="padding-right: 10px; font-size: 15px; padding: 13px; font-weight: bold"
					align="right">Name:</td>
				<td width="65%" style="font-size: 14px"><s:property
						value="user.name" /></td>
			</tr> --%>
			<tr>
				<td width="45%"
					style="padding-right: 10px; font-size: 15px; padding: 20px; font-weight: bold"
					align="right">Subject: </span>
				</td>
				<td width="65%"><s:select cssStyle="width:155px;"
						list="{'Hostel','Canteen','Ground','Faculty','Class rooms','Academics','Library'}" name="subject" >
					</s:select></td>
			</tr>
			<tr>
				<td width="35%"
					style="padding-right: 10px; font-size: 15px; padding: 25px; font-weight: bold"
					align="right">Feedback:
				</td>
				<td width="65%"><s:textarea rows="5" cols="40" name="feedback" /> </td>
			</tr>



		
			<tr>
				<td width="35%" style="padding-right: 25px; font-size: 10px;"
					align="right">
				<td width="65%"><s:submit value="Submit" cssClass="button"></s:submit></td>
			</tr>

		</s:form>

		
		<tr>
	</table>

</body>
</html>