<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>UserList</title>
</head>
<style>
    .container {
        position: fixed;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
    }
    td{
        font-family: "Source Sans Pro", sans-serif;
        font-size: 20px;
    }
    table, th, td {
        border: 1px solid black;
        padding: 5px;
    }
</style>
<body>
<div class="container">
<table>
    <thead>
    <tr>
        <td>Login</td>
        <td>Name</td>
    </tr>
    </thead>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td>${user.login}</td>
            <td>${user.name}</td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>