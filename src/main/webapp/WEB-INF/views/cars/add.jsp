<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styled_table.css' %>
</style>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<%@include file="../header.jsp"%>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add"></form>
<h2>Add car:</h2>
<table class="styled-table">
    <thead>
    <tr>
        <th>Model</th>
        <th>Manufacturer ID</th>
        <th>Add</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>
            <input type="text" name="model" form="car" required>
        </td>
        <td>
            <input type="number" name="manufacturer_id" form="car" required>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
