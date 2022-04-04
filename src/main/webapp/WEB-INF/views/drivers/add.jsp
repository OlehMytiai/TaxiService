<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styled_table.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<c:choose>
    <c:when test="${driver_id != null}">
        <%@include file="../header.jsp"%>
    </c:when>
    <c:otherwise>
        <%@include file="../unauth_header.jsp"%>
    </c:otherwise>
</c:choose>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h2>Add driver:</h2>
<table class="styled-table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Login</th>
        <th>Password</th>
        <th>License number</th>
        <th>Add</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>
            <input type="text" name="name" form="driver" required>
        </td>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="text" name="license_number" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
