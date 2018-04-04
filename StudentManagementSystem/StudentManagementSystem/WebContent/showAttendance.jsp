<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<link href='https://fonts.googleapis.com/css?family=Dosis|Droid+Serif' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance</title>
<style type=text/css>
p{
font-size:15px;
text-align:center;
padding:25px;

}
body{
background-color:#f1f1f1;}
.note{
font-weight:bold;
font-size:12px;
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
			My Attendance
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
		

</table>
<p>Your Attendance: <s:property value="attendance.value" />%</p>

<p>College Days:<s:property value="attendance.days" /></p>
<p>Days Present:<s:property value="attendance.present" />
<p>Last came on:<s:property value="attendance.lastDate" /></p>
<p class="note">75% of attendance is required to sit for the examination</p>
</body>
</html>