<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Lista Ćwiczeń Zawodników</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1>Lista Ćwiczeń Zawodników</h1>
    <a href='${pageContext.request.contextPath}/playerExercise/add' class="btn btn-primary mb-3">Dodaj Ćwiczenie Zawodnika</a>
    <a href="/dashboard" class="btn btn-primary mb-3">Powrót do menu</a>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Ćwiczenie</th>
            <th>Zawodnik</th>
            <th>Opinia</th>
            <th>Akcje</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="playerExercise" items="${playerExercises}">
            <tr>
                <td>${playerExercise.id}</td>
                <td>${playerExercise.exercise.name}</td>
                <td>${playerExercise.player.firstName} ${playerExercise.player.lastName}</td>
                <td>${playerExercise.feedback}</td>
                <td>
                    <a href='${pageContext.request.contextPath}/playerExercise/edit/${playerExercise.id}' class="btn btn-warning btn-sm">Edytuj</a>
                    <form action='${pageContext.request.contextPath}/playerExercise/delete/${playerExercise.id}' method="post" style="display:inline;">
                        <button type="submit" class="btn btn-danger btn-sm">Usuń</button>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<jsp:include page="../main/footer.jsp"/>
