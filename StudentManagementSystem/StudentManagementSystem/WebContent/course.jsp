<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Course</title>
<style type="text/css">
body{
background-color:#f1f1f1;
}
/* div{
padding:70px;} */
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
	<div>
	<div class="user">
		<h1 class="userPage">
			My Course
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
	
	<table width="60%" cellspacing="0" cellpadding="0" border="0"
		align="center" height="60%"
		style="bottom: 0px; padding:15px; border: 1px solid black; border-collapse: collapse;">


		<tr style="border: 1px solid black; border-collapse: collapse;">
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 0px; font-size: 15px"><b>Subject
					ID:</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding:  0px; font-size: 15px"><b>Subjects</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding:  0px 0px 0px 20px; font-size: 15px"><b>Course
					Name</b></td>





			<s:iterator var="course" value="courseList">
				<tr style="border: 1px solid black; border-collapse: collapse;">

					<td
						style="border: 1px solid black; border-collapse: collapse; padding: 15px; font-size: 13px"><s:property
							value="subjectId" /></td>
					<td
						style="border: 1px solid black; border-collapse: collapse; padding: 15px; font-size: 13px"><s:property
							value="subjectName" /></td>

					<td
						style="border: 1px solid black; border-collapse: collapse; padding: 15px; font-size: 13px"><s:property
							value="courseName" /></td>
			</s:iterator>
	</table>
</div>
</body>
</html>