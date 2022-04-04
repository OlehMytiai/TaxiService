<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styled-login-page.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%@include file="login_header.jsp"%>
<div class="login-page">
    <div class="form">
        <h4 style="color: coral">${errorMsg}</h4>
        <form class="login-form" method="post" action="${pageContext.request.contextPath}/login">
            <input type="text" name="login" placeholder="username"/>
            <input type="password" name="password" placeholder="password"/>
            <button type="submit">login</button>
            <p class="message">New user? <a href="${pageContext.request.contextPath}/drivers/add">Create a driver account</a></p>
        </form>
    </div>
</div>
</body>
</html>
