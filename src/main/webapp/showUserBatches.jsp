<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
    <%@page import = "com.caltech.dao.BatchDAO" %>
<%@page import = "com.caltech.pojo.Batch" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Batches Page</title>
<style >
   h2{
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
p{
 color : blue;
}

</style>
</head>
<body>
<div align="center">
<a href="loginUser.jsp">Logout</a>
</div>
<div align="center" >
        <table border="1" cellpadding="5">
            <caption><h2>List of User Batches</h2></caption>
            <tr>
                <th>Batch ID</th>
                <th>Batch Name</th>
                <th>Batch Instructor</th>
                <th>Batch Date</th>
                <th>Batch Time</th>
                <th>Register</th>
              </tr>
<%
BatchDAO dao = new BatchDAO();
List<Batch> list = dao.displayBatch();
request.setAttribute("batch",list);
String pId=request.getParameter("id");
String pName=request.getParameter("name");

if(request.getParameter("id")!= null &&
		request.getParameter("name")!= null) {
	session.setAttribute("pId", request.getParameter("id"));
	session.setAttribute("pName", request.getParameter("name"));
	
}

if(session.getAttribute("pId")!= null &&
		session.getAttribute("pName")!= null) {
	pId=(String)session.getAttribute("pId");
	pName=(String)session.getAttribute("pName");
	
}
%>  

<c:forEach items="${requestScope.batch}" var="b">
<tr>
<td><c:out value="${b.b_id}"></c:out></td>
<td><c:out value="${b.b_name}"></c:out></td>
<td><c:out value="${b.b_instructor}"></c:out></td>
<td><c:out value="${b.b_date}"></c:out></td>
<td><c:out value="${b.b_time}"></c:out></td>
<td><a href = "registerBatch.jsp?batch_id=<c:out value="${b.b_id}"/>&participant_id=<%=pId%>&participant_name=<%=pName%>">Register</a></td>
</tr>
</c:forEach>
        </table>
    </div>
</body>
</html>