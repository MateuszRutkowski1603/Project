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
    <h1>Dodaj ćwiczenie dla bramkarza</h1>
    <form:form action="/goalkeeper/add" method="post" class="needs-validation" modelAttribute="goalkeeperExercise">

        <div class="form-group">
            <label for="name">Nazwa ćwiczenia:</label>
            <form:input type="text" id="name" path="name" class="form-control"/>
            <form:errors path="name"/>
            <div class="invalid-feedback">
            </div>
        </div>

        <div class="form-group">
            <label for="description">Opis ćwiczenia:</label>
            <form:input type="text" id="description" path="description" class="form-control"/>
            <form:errors path="description"/>
            <div class="invalid-feedback">
            </div>
        </div>

        <div class="form-group">
            <label for="equipment">Potrzebne przedmioty:</label>
            <form:input type="text" id="equipment" path="equipment" class="form-control"/>
            <form:errors path="equipment"/>
            <div class="invalid-feedback">
            </div>
        </div>

        <div class="form-group">
            <label for="points">Punkty:</label>
            <form:input type="number" id="points" path="points" class="form-control"/>
            <form:errors path="points"/>
            <div class="invalid-feedback">
            </div>
        </div>

        <div class="form-group">
            <label for="time">Czas ćwiczenia (minuty):</label>
            <form:input type="number" id="time" path="time" class="form-control"/>
            <form:errors path="time"/>
            <div class="invalid-feedback">
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Dodaj</button>
        <a href="/goalkeeper/list" class="btn btn-secondary">Powrót do listy</a>
    </form:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
