<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>APW Worksheet</title>
<style type=text/css>
body{
margin: 0 auto;
background-color:#f1f1f1;
font-size:13px;
}
table{

   font-size:15px;
   font-weight:bold;
   padding:5px;
   margin:5px;
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
			My Courses
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
	<table >
		<tr>
			<td>Name: <s:property value="user.name" /></td>
		</tr>
		<tr>
			<td>E-mail: <s:property value="user.email" /></td>
		</tr>
	</table>

	<ol>
		<li>For this semester you have to choose minimum of 26 credit
			units and can choose up to 30 [For SAP 32] credit units.</li></br>
		<li>The course options are displayed below under various Course
			types like (Core Courses, Value Addition Courses, Specialization
			Electives, and Domain Electives etc.). The credit units allowed
			against each course type is displayed next to course type;
			accordingly you need to choose courses from the list of courses
			displayed under each course type. For example, if an elective course
			type (DE, SE, OE and NTCC) has 0-3 credits, this means student can
			take nil course to a course of up to 3 credits in a particular course
			Type. In-lieu of that a student may take courses from other category
			of elective type. For the course types displayed in Green and marked
			Compulsory, all the courses displayed under these course types
			are auto selected as it is mandatory to choose these courses.</li></br>
		<li>Please note that the credit units of Mandatory Courses are
			not counted for the overall credit units requirement for the
			semester, though passing in the course is mandatory</li></br>

		<li>For Foreign Business Language, Open Electives and Domain
			Electives Various Groups with Capacity and Timetable Slots are
			displayed. You can choose a convenient group based on the free slots
			available not clashing with your other class timings.</li></br>
		<li>You can choose any one language from the list given under
			Foreign Business Language(FBL) Options. Senior batches should
			continue with their existing FBL.</li></br>
		<li>AUBSI courses are paid courses (@6000/-) and offered only on
			Saturdays.</li></br>
		<li>MTC courses will be of one week duration and will be held at
			Amity, Manesar. Group-wise Dates will announced separately. ACC
			sessions will be held either on Weekdays in Morning/Evening or
			Saturdays.</li></br>
		<li>The students may opt for SAP course to gain International
			exposure and get a hands on experience of the foreign culture,
			industry, economic dynamics etc.</li></br>
		<li>SAP courses are paid courses and extra credit done by the
			student will be counted for SGPA of the semester.</li></br>
		<li>Students are advised to go through the guidelines/ course
			details before submitting their APW.</li></br>
	</ol>
</body>
</html>