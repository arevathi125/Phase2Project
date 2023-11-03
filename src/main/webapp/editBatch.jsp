<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Batch Page</title>
</head>
<body>
<div align = "center">
<h1><i>Update a Batch Entries</i></h1>
<form action = "editBatchController.jsp">
<div class="div">
<table>
<input type = "hidden" name = "id" value = "<%= request.getParameter("id") %>"><br>
<tr><td>Enter Batch name to be update</td><td><input type = "text" name = "b_name" ></td><br></tr>
<tr><td>Enter Instructor to be update</td><td><input type = "text" name = "b_instructor" ></td><br></tr>
</div>
</table>
<input type = "submit" value = "Update">
</form>
</div>
</body>
</html>