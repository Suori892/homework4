<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<style>
    .container {
        position: fixed;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
    }
    h1, a {
        font-size: 22px;
        font-weight: 500;
        font-family: "Source Sans Pro", sans-serif;
        color: black;
    }
</style>
<body>
<div class="container">
    <h1>Welcome</h1>
    <br>
    <ul>
        <li><a href="<c:url value="/userList"/>">User list</a></li>
        <li><a href="<c:url value="/logout"/>">Logout</a></li>
    </ul>
</div>
</body>
</html>
