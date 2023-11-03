<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "com.caltech.dao.ParticipantDAO" %>
<%@page import = "com.caltech.pojo.Participant" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Page</title>
</head>
<body>
<%
ParticipantDAO dao = new ParticipantDAO();
Participant participant = new Participant();
participant.setP_id(Integer.parseInt(request.getParameter("id")));

if(dao.delete(participant) > 0){
	response.sendRedirect("success.jsp");
}
%>
</body>
</html>