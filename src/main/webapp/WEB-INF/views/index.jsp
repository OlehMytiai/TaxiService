<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/styled_table.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<%@include file="header.jsp" %>
<form method="post" id="redirect"></form>
<h2>Hello, ${driver.name}</h2>
<table class="styled-table">
    <thead>
    <tr>
        <th>Redirect to</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/drivers">Display My Current Cars</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td>
    </tr>
    </tbody>
</table>
</body>
</html>
