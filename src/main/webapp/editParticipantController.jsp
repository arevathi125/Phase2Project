<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "com.caltech.dao.ParticipantDAO" %>
<%@page import = "com.caltech.pojo.Participant" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Participant Controller Page</title>
</head>
<body>
<%
ParticipantDAO dao = new ParticipantDAO();
Participant participant = new Participant();
participant.setP_id(Integer.parseInt(request.getParameter("id")));
participant.setP_name(request.getParameter("p_name"));
participant.setP_password(request.getParameter("p_password"));

if(dao.edit(participant) > 0){
	response.sendRedirect("success.jsp");
}
%>
</body>
</html>