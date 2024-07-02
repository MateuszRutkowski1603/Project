<%--
  Created by IntelliJ IDEA.
  User: mateuszrutkowski
  Date: 18/06/2024
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edytuj ćwiczenie</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value='../css/style.css' />">
</head>
<body>
<div class="container mt-5">
    <h1>Edytuj ćwiczenie</h1>
    <form:form action="/exercise/edit/${exercise.id}" method="post" modelAttribute="exercise" class="needs-validation">

        <div class="form-group">
            <label for="name">Nazwa ćwiczenia:</label>
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

        <button type="submit" class="btn btn-primary">Zapisz zmiany</button>
        <a href="/exercise/list" class="btn btn-secondary">Powrót do listy</a>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form:form>
</div>
<jsp:include page="../main/footer.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

