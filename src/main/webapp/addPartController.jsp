<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@page import = "com.caltech.dao.ParticipantDAO" %>
<%@page import = "com.caltech.pojo.Participant" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%--  <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Controller Page</title>
</head>
<body>
<% 
ParticipantDAO dao = new ParticipantDAO();
Participant participant = new Participant();
participant.setP_id(Integer.parseInt(request.getParameter("p_id")));
participant.setP_name(request.getParameter("p_name"));
participant.setP_password(request.getParameter("p_password"));
participant.setP_phone(request.getParameter("p_phone"));
participant.setP_email(request.getParameter("p_email"));
if(dao.insert(participant) > 0){
	response.sendRedirect("success.jsp");
}
%> 
</body>
</html>  
<%--
<c:set var="dao" value="<%=new ParticipantDAO()%>"> </c:set>
<c:set var="participant" value="<%=new Participant()%>"> </c:set>
<c:set var="participant.id" value="${param.id}"/>
<c:set var="participant.name" value="${param.name}"/>
<c:set var="participant.password" value="${param.password}"/>
<c:set var="participant.phone" value="${param.phone}"/>
<c:set var="participant.email" value="${param.email}"/>
<c:if test="${dao.insert(participant) > 0}">
<c:redirect url = "success.jsp"/>
</c:if> --%>
