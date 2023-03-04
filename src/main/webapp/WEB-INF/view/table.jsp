<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 04.03.2023
  Time: 8:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="2px">
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>age</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="table" var="users">
        <tr class="table">
            <td>${users.id}</td>
            <td>${users.name}</td>
            <td>${users.age}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
