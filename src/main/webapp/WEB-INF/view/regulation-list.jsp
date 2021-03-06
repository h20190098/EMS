<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Regulation List</title>
      <style>
         table, th, td {
            border: 1px solid black;
         }
      </style>
</head>
<body>
Regulations List
<br>
<input type="button" value="Add Regulation" onclick="window.location.href='${pageContext.request.contextPath}/admin/addRegForm'; return false;">

<table>
    <tr>
        <th>Regulation ID</th>
        <th>Regulation Type</th>
        <th>Description</th>
        <th>Creation Date</th>
        <th>Department ID</th>
        <th>Status</th>
    </tr>
    <c:forEach items="${regulations}" var="regulation">
        <c:url var="trackStatus" value="/admin/trackStatus">
            <c:param name="dept_id"  value="${regulation.department.department_id}"/>
        </c:url>
        <tr>
            <td>${regulation.id}</td>
            <td>${regulation.RLType}</td>
            <td>${regulation.details}</td>
            <td>${regulation.createdate}</td>
            <td>${regulation.department.department_id}</td>
            <td><a href="${trackStatus}"> Track the status</a></td>
        </tr>
    </c:forEach>
</table>

<a href="${pageContext.request.contextPath}/">Home</a>
</body>
</html>
