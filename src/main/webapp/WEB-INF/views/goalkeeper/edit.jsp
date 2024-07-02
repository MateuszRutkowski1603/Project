<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edycja ćwiczenia</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="container mt-5">
    <h1>Edycja ćwiczenia</h1>
    <form:form action="/goalkeeper/edit/${goalkeeperExercise.id}" modelAttribute="goalkeeperExercise" method="post"
               class="needs-validation">
        <div class="form-group">
            <label for="name">Nazwa ćwiczenia:</label>
            <form:input path="name" id="name" class="form-control"/>
            <form:errors path="name"/>
        </div>

        <div class="form-group">
            <label for="description">Opis ćwiczenia:</label>
            <form:input path="description" id="description" class="form-control"/>
            <form:errors path="description"/>
        </div>

        <div class="form-group">
            <label for="equipment">Potrzebne przedmioty:</label>
            <form:input path="equipment" id="equipment" class="form-control"/>
            <form:errors path="equipment"/>
        </div>

        <div class="form-group">
            <label for="points">Punkty:</label>
            <form:input path="points" id="points" class="form-control"/>
            <form:errors path="points"/>
        </div>

        <div class="form-group">
            <label for="time">Czas ćwiczenia (minuty):</label>
            <form:input path="time" id="time" class="form-control"/>
            <form:errors path="time"/>
        </div>

        <button type="submit" class="btn btn-primary">Zapisz</button>
        <a href="/goalkeeper/list" class="btn btn-secondary">Powrót do listy</a>
    </form:form>
</div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
