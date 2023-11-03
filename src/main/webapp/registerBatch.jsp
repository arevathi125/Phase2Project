<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<style>
  .div1{
  color : darkblue;
  }
  input[type=submit]{
   color : white;
   background-color : magenta;
  }
  td{
  color : blue;
  }
  h2{
  color : Darkblue;
  }
</style>
</head>
<body>
<form action="registerParticipantServlet" method="post">
<h2 align = "center">Participant Registration</h2>
<table class = "div1" align = "center">
 <input type = "hidden" name ="batchId" value="<%=request.getParameter("batch_id")%>">
<tr><td>Participant Id </td><td><input type = "text"  readonly name ="participantId" value="<%=request.getParameter("participant_id")%>"></td></tr><br>
 <tr><td>Participant Name</td><td><input type = "text"  readonly name ="name" value="<%= request.getParameter("participant_name") %>"></td></tr><br>
<td></td><td><input type="submit" value = "Register"></td><br>
</table>
</form>
</body>
</html>