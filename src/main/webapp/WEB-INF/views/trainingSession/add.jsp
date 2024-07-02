<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dodaj Sesję Treningową</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1>Dodaj Sesję Treningową</h1>
    <form:form action='/trainingSession/add' method="post" modelAttribute="trainingSession" class="needs-validation">
        <div class="form-group">
            <label for="type">Typ:</label>
            <form:input type="text" id="type" path="type" class="form-control"/>
            <form:errors path="type" class="text-danger"/>
        </div>
        <div class="form-group">
            <label for="startTime">Czas rozpoczęcia:</label>
            <form:input type="datetime-local" id="startTime" path="startTime" class="form-control"/>
            <form:errors path="startTime" class="text-danger"/>
        </div>
        <div class="form-group">
            <label for="duration">Czas trwania (minuty):</label>
            <form:input type="number" id="duration" path="duration" class="form-control"/>
            <form:errors path="duration" class="text-danger"/>
        </div>
        <div class="form-group">
            <label for="place">Miejsce:</label>
            <form:select path="place.id" items="${places}" itemValue="id" itemLabel="placeName" class="form-control"/>
            <form:errors path="place" class="text-danger"/>
        </div>
        <div class="form-group">
            <label for="players">Gracze:</label>
            <form:select path="players" items="${players}" itemValue="id" itemLabel="firstName" multiple="true"
                         class="form-control"/>
            <form:errors path="players" class="text-danger"/>
        </div>
        <button type="submit" class="btn btn-primary">Dodaj</button>
        <a href='/trainingSession/list' class="btn btn-secondary">Powrót do listy</a>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<jsp:include page="../main/footer.jsp"/>
