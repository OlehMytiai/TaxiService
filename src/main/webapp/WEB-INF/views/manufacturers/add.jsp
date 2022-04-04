<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styled_table.css' %>
</style>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<%@include file="../header.jsp"%>
<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add"></form>
<h2>Add manufacturer:</h2>
<table class="styled-table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Country</th>
        <th>Add</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>
            <input type="text" name="name" form="manufacturer" required>
        </td>
        <td>
            <input type="text" name="country" form="manufacturer" required>
        </td>
        <td>
            <input type="submit" name="add" form="manufacturer" required>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
