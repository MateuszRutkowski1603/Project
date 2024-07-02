<%--
  Created by IntelliJ IDEA.
  User: mateuszrutkowski
  Date: 18/06/2024
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj miejsce</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="container mt-5">
    <h1>Dodaj miejsce</h1>
    <form:form action="/place/add" method="post" modelAttribute="place" class="needs-validation">

        <div class="form-group">
            <label for="placeName">Nazwa obiektu:</label>
            <form:input type="text" id="placeName" path="placeName" class="form-control"/>
            <form:errors path="placeName" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="address">Adres obiektu:</label>
            <form:input type="text" id="address" path="address" class="form-control"/>
            <form:errors path="address" class="text-danger"/>
        </div>
        <button type="submit" class="btn btn-primary">Dodaj</button>
        <a href="/place/list" class="btn btn-secondary">Powrót do listy</a>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<jsp:include page="../main/footer.jsp"/>
