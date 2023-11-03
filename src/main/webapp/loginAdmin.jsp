<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
h1{
 color : green;
}
td{
color : darkgreen;
}
input[type = submit]{
color : white;
background-color : green;
}
input[type = button]{
color : white;
background-color : green;
}
 </style>
</head>
<body>
<h1 align="center"><b><i>Administrator Login</i></b>  </h1>
<form action="index.jsp">
<table align="center">
<tr><td><b>User name </b> </td><td><input type="text"  name="user" value="admin"></td></tr><br>
<tr><td><b>Password  </b> </td><td><input type="password"  name="pwd" value="admin"></td></tr><br>
<tr></td><td><td><input type="submit" value = "Login"></td></tr><br>
<tr><td></td><td>Still not registered?<input type="button" value = "Register Here!"></td></tr>
</table>
</form>
</body>

</html>