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
<table border="2px" align="center" style="color: red;width:550px">
    <thead>
    <tr style="text-align: start">
        <th>id</th>
        <th>name</th>
        <th>age</th>
        <th>delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${tnt}" var="table">
        <tr style="text-align: start">
            <td>${table.id}</td>
            <td style="text-align: start">
                <a href="/get/${table.id}">
                        ${table.name}
                </a>
            </td>
            <td>${table.age}</td>
            <td style="text-align: center">
                <form action="/delete/by/${table.id}" method="get" >
                    <button style="height: 20px; width: 100px; background-color: black;color: white;border-radius: 5px;margin-top: 7px" type="submit">delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<style>
    a {
    text-decoration: none;
    color: red;
    }
</style>
<button style="background-color: black; width: 140px;height: 40px; margin-left: 680px;margin-top: 10px" align="center"><a style="color: white;" href="studentForm">register user</a></button>
</body>
</html>
