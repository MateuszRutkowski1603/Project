<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Lista ćwiczeń</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css' />">
</head>
<body>
<div class="container mt-5">
    <h1>Lista ćwiczeń</h1>
    <a href='/exercise/add' class="btn btn-primary mb-3">Dodaj ćwiczenie</a>
    <a href="/dashboard" class="btn btn-primary mb-3">Powrót do menu</a>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nazwa ćwiczenia</th>
            <th>Opis ćwiczenia</th>
            <th>Czas trwania ćwiczenia (min)</th>
            <th>Typ ćwiczenia</th>
            <th>Akcje</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="exercise" items="${exercises}">
            <tr>
                <td>${exercise.id}</td>
                <td>${exercise.name}</td>
                <td>${exercise.description}</td>
                <td>${exercise.duration}</td>
                <td>${exercise.type}</td>

                <td>
                    <a href='/exercise/edit/${exercise.id}' class="btn btn-warning btn-sm">Edytuj</a>
                    <form action="${pageContext.request.contextPath}/exercise/delete/${exercise.id}" method="post"
                          style="display:inline;">
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
