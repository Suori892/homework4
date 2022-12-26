<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authentication</title>
</head>
<style>
    .login-container {
        position: fixed;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
    }
    input{
        width: 400px;
        height: 40px;
        border-radius: 5px;
        box-shadow: none;
        border: 1px solid #ced6e0;
        transition: all 0.3s ease-in-out;
        font-size: 18px;
        padding: 5px 15px;
        background: none;
        color: #1a3b5d;
        font-family: "Source Sans Pro", sans-serif;
        margin-top: 15px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    input:hover{
        border-color: #3d9cff;
    }

    input:focus{
        outline: none;
        border-color: #3d9cff;
        box-shadow: 0px 10px 20px -13px rgba(32, 56, 117, 0.35);
    }

    button{
        width: 100%;
        height: 50px;
        background: #2364d2;
        border: none;
        border-radius: 5px;
        font-size: 22px;
        font-weight: 500;
        font-family: "Source Sans Pro", sans-serif;
        box-shadow: 3px 10px 20px 0px rgba(35, 100, 210, 0.3);
        color: #fff;
        margin-top: 40px;
        cursor: pointer;
    }
    label {
        font-size: 22px;
        font-weight: 500;
        font-family: "Source Sans Pro", sans-serif;
        margin-top: 10px;
        margin-bottom: 10px;
    }
</style>
<body>
<div class="login-container">
    <form action="<c:url value="/login"/>" method="post" class="login-form">
        <label for="login" class="label">Login</label>
        <input id="login" type="text" name="login" class="input">
        <label for="password" class="label">Password</label>
        <br>
        <input id="password" type="password" name="password" class="input">
        <p class="error">${error}</p>
        <button type="submit" class="submit-button">Login</button>
    </form>
</div>
</body>
</html>
