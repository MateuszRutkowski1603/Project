<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edytuj Ćwiczenie Zawodnika</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1>Edytuj Ćwiczenie Zawodnika</h1>
    <form:form action="${pageContext.request.contextPath}/playerExercise/edit/${playerExercise.id}" method="post" modelAttribute="playerExercise" class="needs-validation">
        <div class="form-group">
            <label for="exercise">Ćwiczenie:</label>
            <form:select path="exercise.id" items="${exercises}" itemValue="id" itemLabel="name" class="form-control"/>
            <form:errors path="exercise" class="text-danger"/>
        </div>
        <div class="form-group">
            <label for="player">Zawodnik:</label>
            <form:select path="player.id" items="${players}" itemValue="id" itemLabel="firstName" class="form-control"/>
            <form:errors path="player" class="text-danger"/>
        </div>
        <div class="form-group">
            <label for="feedback">Opinia:</label>
            <form:textarea path="feedback" id="feedback" class="form-control"/>
            <form:errors path="feedback" class="text-danger"/>
        </div>
        <button type="submit" class="btn btn-primary">Zapisz</button>
        <a href="${pageContext.request.contextPath}/playerExercise/list" class="btn btn-secondary">Powrót do listy</a>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<jsp:include page="../main/footer.jsp"/>
