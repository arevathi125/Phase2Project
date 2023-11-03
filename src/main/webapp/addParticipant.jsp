<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertion Page</title>
<style>
h1 {
	font-size: 25px;
	color: red;
}

td {
	color: blue;
}
input[type=submit]{
  background-color: blue;
  color: white;
  border: none;
  padding: 10px 12px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
  padding: 10px 12px;
}
</style>
</head>
<body>
	<h1>
		<i>Adding a Participant</i>
	</h1>
	<form action="addPartController.jsp">
		<table>
			<tr>
				<td>Participant Id</td>
				<td><input type="text" name="p_id"></td>
			</tr>
			<br>
			<tr>
				<td>Participant Name</td>
				<td><input type="text" name="p_name"></td>
			</tr>
			<br>
			<tr>
				<td>Participant Password</td>
				<td><input type="password" name="p_password"></td>
			</tr>
			<br>
			<tr>
				<td>Participant Phone</td>
				<td><input type="text" name="p_phone"></td>
			</tr>
			<br>
			<tr>
				<td>Participant Email</td>
				<td><input type="text" name="p_email"></td>
			</tr>
			<br>
			<tr>
				<td></td>
				<td><b><input type="submit" value="addParticipant"></b></td>
		</table>
	</form>
</body>
</html>