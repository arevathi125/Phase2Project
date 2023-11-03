<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<style>
.div{
  color:deeppink;
}
h1{
   color:lightseagreen;
}
input[type=submit]{
  background-color: maroon;
  color: white;
  padding: 10px 12px;
  text-decoration: none;
  margin: 2px 2px;
  cursor: pointer;
  padding: 10px 12px;
}
</style>
</head>
<body>
<div align = "center">
<h1><i>Update a Participant Entries</i></h1>
<form action = "editParticipantController.jsp">
<div class="div">
<table>
<input type = "hidden" name = "id" value = "<%= request.getParameter("id") %>"><br>
<tr><td>Enter Participant name to be update</td><td><input type = "text" name = "p_name" ></td><br></tr>
<tr><td>Enter Participant password to be update</td><td><input type = "password" name = "p_password" ></td><br></tr>
</div>
</table>
<input type = "submit" value = "Update">
</form>
</div>
</body>
</html>