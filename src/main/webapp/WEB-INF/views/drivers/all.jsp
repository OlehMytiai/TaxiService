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
<%@include file="../header.jsp"%>
<h2>All drivers:</h2>
<table class="styled-table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Login</th>
            <th>License number</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="driver" items="${drivers}">
            <tr>
                <td>
                    <c:out value="${driver.id}"/>
                </td>
                <td>
                    <c:out value="${driver.name}"/>
                </td>
                <td>
                    <c:out value="${driver.login}"/>
                </td>
                <td>
                    <c:out value="${driver.licenseNumber}"/>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
