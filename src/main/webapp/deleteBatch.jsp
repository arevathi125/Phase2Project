<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
   <%@page import = "com.caltech.dao.BatchDAO" %>
   <%@page import = "com.caltech.pojo.Batch" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="batch" class="com.caltech.pojo.Batch" />
<%
BatchDAO dao = new BatchDAO();
//dao.edit(batch);
batch.setB_id(Integer.parseInt(request.getParameter("id")));
int count = dao.delete(batch);
if(count>0){
%>
<c:redirect url = "success1.jsp"/>
<%
}
%>
</body>
</html>