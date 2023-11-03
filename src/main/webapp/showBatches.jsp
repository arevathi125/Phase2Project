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

</style>
</head>
<body>
<form action = "addBatch.jsp">
<div align="center" >
<input type = "submit" value = "AddBatch">
</div>
</form>
<div align="center" >
        <table border="1" cellpadding="5">
            <caption><h2>List of Batches</h2></caption>
            <tr>
                <th>Batch ID</th>
                <th>Batch Name</th>
                <th>Batch Instructor</th>
                <th>Batch Date</th>
                <th>Batch Time</th>
                <th>Edit Action</th>
                <th>Delete Action</th>
              </tr>
<%
BatchDAO dao = new BatchDAO();
List<Batch> list = dao.displayBatch();
request.setAttribute("batch",list);

%>  
<c:forEach items="${requestScope.batch}" var="b">
<tr>

<td><c:out value="${b.b_id}"></c:out></td>
<td><c:out value="${b.b_name}"></c:out></td>
<td><c:out value="${b.b_instructor}"></c:out></td>
<td><c:out value="${b.b_date}"></c:out></td>
<td><c:out value="${b.b_time}"></c:out></td>
<td><a href="editBatch.jsp?id=<c:out value="${b.b_id}"/>">Edit</a></td>
<td><a href = "deleteBatch.jsp?id=<c:out value="${b.b_id}"/>">Delete</a></td>
</tr>
</c:forEach>
            
        </table>
    </div>
</body>
</html>