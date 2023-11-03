<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<style>
h2{
color : Darkblue;
}
h3{
color : Red;
}
td{
color : blue;
}
input[type = submit]{
color : white;
background-color : blue;
}
</style>
</head>
<body>
<% 
if("F".equals(request.getParameter("loginStatus")))
{
%>
<h3 align="center">
<p>Either Username (or) Password is incorrect.Please contact Administrator</p>
</h3>
<%
}
%>

<h2 align="center"><b><i>User Login</i></b>  </h2>
<form action = "loginUserServlet"  method="post">
<table align="center">
<tr><td><b>User name :</b> </td><td><input type="text"  name="user" ></td></tr><br>
<tr><td><b>Password  :</b> </td><td><input type="password"  name="pwd" ></td></tr><br>
<tr></td><td><td><input type="submit" value = "Login"></td></tr><br>
</table>
</form>
</body>
</html>