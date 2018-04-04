<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin</title>
<style type=text/css>
body{
 background: url(images/sky-clouds-garden-school.jpg);
  background-size:     cover;                    
    background-repeat:   no-repeat;
    background-position: center center;
}



</style>
</head>
<body>
<div>
	<div class="user">
		<h1 class="userPage">
			Welcome to your page, <span class="span">Admin</span>
		</h1>

	</div>
	<ul>
		<%-- <s:url var="abountUser" action="aboutyou">
			<s:param name="emailId">
				<s:property value="user.email" />
			</s:param>
		</s:url>
		<li><a href="${abountUser}">My Profile</a></li> --%>

		<li><a href="viewrecords">Manage Records</a></li>
		
		<li><a href="feedbacks">Feedbacks</a></li>
		

	</ul>

</div>

</body>
</html>







