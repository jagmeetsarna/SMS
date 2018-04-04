<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedbacks</title>
</head>
<body>
	<div class="user">
		<h1 class="userPage">
			Feedbacks <span class="span"></span>
		</h1>
	</div>




	<table width="60%" cellspacing="0" cellpadding="0" border="0"
		align="center" height="60%"
		style="bottom: 0px; margin-bottom: 0px; border: 1px solid black; border-collapse: collapse;">


		<tr style="border: 1px solid black; border-collapse: collapse;">
			
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 2px;font-size: 15px;"><b>
					Query ID:</b></td>
			
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;font-size: 15px;"><b>
					ID:</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;font-size: 15px;"><b>Name:</b></td>


			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;font-size: 15px;"><b>Subject</b></td>
			<td
				style="border: 1px solid black; border-collapse: collapse; padding: 5px;font-size: 15px;"><b>Feedback</b></td>

		</tr>

		<s:iterator value="list">
			<tr style="border: 1px solid black; border-collapse: collapse;">
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;font-size: 13px;"><s:property
						value="qid" /></td>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;font-size: 13px;"><s:property
						value="id" /></td>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;font-size: 13px;"><s:property
						value="name" /></td>


				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;font-size: 13px;"><s:property
						value="subject" /></td>
				<td
					style="border: 1px solid black; border-collapse: collapse; padding: 5px;font-size: 13px;"><s:property
						value="feedback" /></td>
		</s:iterator>

	</table>


</body>
</html>