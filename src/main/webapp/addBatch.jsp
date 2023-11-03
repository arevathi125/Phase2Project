<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1{
color : Darkgreen;
}
td{
 color : indigo;
}
input[type = submit]{
  color : white;
  background-color : indianred;
}
</style>
</head>
<body align = "center">
<h1><i>Adding a Batch Details</i></h1>
<form action ="addBatchController.jsp">
<table align = "center">
<tr><td>Batch Id</td><td><input type = "text" name = "b_id"></td></tr><br>
<tr><td>Batch Name</td><td><input type = "text" name = "b_name"></td></tr><br>
<tr><td>Batch Instructor</td><td><input type = "text" name = "b_instructor"></td></tr><br>
<tr><td>Batch Date</td><td><input type = "text" name = "b_date"></td></tr><br>
<tr><td>Batch Time</td><td><input type = "text" name = "b_time"></td></tr><br>
<tr><td></td><td><input type = "submit" value = "Add Batch"></td>
</table>
</form>
</body>
</html>