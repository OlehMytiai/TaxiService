<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file="css/styled-header.css"%>
</style>
<html>
<head>
  <title>Header</title>
</head>
<body class="body">
<header class="site-header">
  <div class="site-identity">
    <h1><a class="link" href="${pageContext.request.contextPath}/drivers/add">Taxi Application</a></h1>
  </div>
  <nav class="site-navigation">
    <ul class="nav">
      <li><a class="link" href="${pageContext.request.contextPath}/login">Login</a></li>
    </ul>
  </nav>
</header>
</body>
</html>
