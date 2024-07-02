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
    <title>Dodaj gracza</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="container mt-5">
    <h1>Dodaj gracza</h1>
    <form:form action="/player/add" method="post" modelAttribute="player" class="needs-validation">

        <div class="form-group">
            <label for="firstName">Imię:</label>
            <form:input type="text" id="firstName" path="firstName" class="form-control" />
            <form:errors path="firstName" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="lastName">Nazwisko:</label>
            <form:input type="text" id="lastName" path="lastName" class="form-control" />
            <form:errors path="lastName" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="age">Wiek:</label>
            <form:input type="number" id="age" path="age" class="form-control" />
            <form:errors path="age" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="height">Wzrost (cm):</label>
            <form:input type="number" id="height" path="height" class="form-control" />
            <form:errors path="height" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="weight">Waga (kg):</label>
            <form:input type="number" id="weight" path="weight" class="form-control" />
            <form:errors path="weight" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="leadingLeg">Wiodąca noga:</label>
            <form:input type="text" id="leadingLeg" path="leadingLeg" class="form-control" />
            <form:errors path="leadingLeg" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="role">Rola:</label>
            <form:input type="text" id="role" path="role" class="form-control" />
            <form:errors path="role" class="text-danger"/>
        </div>

        <button type="submit" class="btn btn-primary">Dodaj</button>
        <a href="/player/list" class="btn btn-secondary">Powrót do listy</a>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<jsp:include page="../main/footer.jsp"/>
