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
        <th>delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${tnt}" var="table">
        <tr>
            <td>${table.id}</td>
            <td>
                <a href="/get/${table.id}">
                        ${table.name}
                </a>
            </td>
            <td>${table.age}</td>
            <td>
                <form action="/delete/by/${table.id}" method="get">
                    <button type="submit">delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<h1><a href="studentForm">table</a></h1>
</body>
</html>
