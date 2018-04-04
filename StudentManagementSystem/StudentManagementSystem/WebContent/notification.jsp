<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Congratulations!</title>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<style type=text/css>
h3{text-align:center;
background:#660000;
color:white;
padding:10px;
margin:0 auto;}
p{
font-size:15px;
padding:10px;}
</style>
</head>
<body>
<h3>You have successfully signed up! <s:property value="name" /></h3>
<p>To login now:  <a href ="index.jsp">Login Page</a></p>
</body>
</html>