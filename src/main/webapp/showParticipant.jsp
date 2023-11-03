<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "com.caltech.dao.ParticipantDAO" %>
<%@page import = "com.caltech.pojo.Participant" %>
<%@page import = "java.util.*" %>

<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Show Participants Page</title>
<style >
   h1{
	     font-size: 25px;
		 color: red;	
}
th{
color: green;
}
td{
color:purple;
}
input[type=submit]{
  background-color: blue;
  color: white;
}

</style>
</head>
<body>
<div align = "center" >
<h1><i>List of Participants</i></h1>
<form action = "addParticipant.jsp">
<div class ="submit">
 <input type = "submit" value = "AddParticipant"> 
 </div>
</form>
</div>
<div align = "center"  >
<table border="1" >
<tr><th><b>Participant ID</b></th><th><b>Participant Name</b></th><th><b>Participant Password</b></th><th><b>Participant Phone</b></th><th><b>Participant Email</b></th><th><b>Edit Action</b></th><th><b>Delete Action</th></tr>
<%
ParticipantDAO dao = new ParticipantDAO();
List<Participant> list = dao.displayParticipant();
for(Participant p: list){
%>  
<tr><td><%= p.getP_id() %></td><td><%= p.getP_name() %></td><td><%= p.getP_password() %></td><td><%= p.getP_phone() %></td><td><%= p.getP_email() %></td>
<td><a href="editParticipant.jsp?id=<%=p.getP_id()%>">Edit</a></td><td><a href="deleteParticipant.jsp?id=<%=p.getP_id()%>">Delete</a></td></tr>
<%}
%>
</table>
</div>
</body>
</html>