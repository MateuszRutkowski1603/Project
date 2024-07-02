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
    <title>Dodaj ćwiczenie</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="container mt-5">
    <h1>Dodaj ćwiczenie</h1>
    <form:form action="/exercise/add" method="post" modelAttribute="exercise" class="needs-validation">

        <div class="form-group">
            <label for="name">Nazwa ćwieczenia:</label>
            <form:input type="text" id="name" path="name" class="form-control"/>
            <form:errors path="name" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="description">Opis ćwiczenia:</label>
            <form:input type="text" id="description" path="description" class="form-control"/>
            <form:errors path="description" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="duration">Czas trwania ćwiczenia (min):</label>
            <form:input type="number" id="duration" path="duration" class="form-control"/>
            <form:errors path="duration" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="type">Typ ćwiczenia:</label>
            <form:input type="text" id="type" path="type" class="form-control"/>
            <form:errors path="type" class="text-danger"/>
        </div>
        <button type="submit" class="btn btn-primary">Dodaj</button>
        <a href="/exercise/list" class="btn btn-secondary">Powrót do listy</a>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<jsp:include page="../main/footer.jsp"/>
