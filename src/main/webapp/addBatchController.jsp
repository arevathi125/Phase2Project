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
<title>Add Batch Controller</title>
</head>
<body>
<%
BatchDAO dao = new BatchDAO();
%>
 <jsp:useBean id="batch" class="com.caltech.pojo.Batch" />

<c:set target="${batch}" property="b_id" value="${param.b_id}"/>
<c:set target="${batch}" property="b_name"  value="${param.b_name}"/>
<c:set target="${batch}" property="b_instructor" value="${param.b_instructor}"/>
<c:set target="${batch}" property="b_date"  value="${param.b_date}"/>
<c:set target="${batch}" property="b_time" value="${param.b_time}"/>
<%
int count = dao.insert(batch);
if(count>0){
%>
<c:redirect url = "success1.jsp"/>
<%
}
%>

</body>
</html>