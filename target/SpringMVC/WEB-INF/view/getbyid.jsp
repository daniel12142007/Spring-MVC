<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 04.03.2023
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        button {
            transition-duration: 0.4s;

            padding: 10px;

        }

        button:hover {
            background-color: black; /* Green */
            color: white;
            padding: 10px;
        }
        button:active{
            background-color: white;
            padding: 10px;
        }
        a{
            color: black;
        }
        a:hover{
            color:white;
        }
    </style>
</head>
<body>
<h1>id:${index.id}</h1>
<h1>name:${index.name}</h1>
<h1>age:${index.age}</h1>
<button>
    <a href="/">table</a>

</button>

</body>
</html>
