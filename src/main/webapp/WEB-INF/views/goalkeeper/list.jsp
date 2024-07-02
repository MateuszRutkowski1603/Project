<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista ćwiczeń</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<h2>Lista Ćwiczeń Bramkarskich</h2>
<table class="table table-striped">
    <thead>
    <tr>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Sprzęt</th>
        <th>Punkty</th>
        <th>Czas</th>
        <th>Akcje</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="exercise" items="${exercises}">
        <tr>
            <td>
                <c:choose>
                    <c:when test="${exercise.name == 'Budowanie gry bramkarza'}">
                        <a href="https://www.asystent-trenera.pl/bramkarski/17-trening-bramkarski/7195-budowanie-gry-bramkarza-podaniami-w-strefie-niskiej-srodek-treningowy"
                           target="_blank">
                                ${exercise.name}
                        </a>
                    </c:when>
                    <c:when test="${exercise.name == 'Reakcja bramkarza'}">
                        <a href="https://www.asystent-trenera.pl/bramkarski/17-trening-bramkarski/1968-reakcja-bramkarza-pierwszy-krok-i-rzut-do-piki"
                           target="_blank">
                                ${exercise.name}
                        </a>
                    </c:when>
                    <c:otherwise>
                        ${exercise.name}
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${exercise.description}</td>
            <td>${exercise.equipment}</td>
            <td>${exercise.points}</td>
            <td>${exercise.time}</td>
            <td>
                <a href="${pageContext.request.contextPath}/goalkeeper/edit/${exercise.id}"
                   class="btn btn-warning btn-sm">Edytuj</a>
                <a href="${pageContext.request.contextPath}/goalkeeper/add" class="btn btn-warning btn-sm">Dodaj</a>
                <form action="${pageContext.request.contextPath}/goalkeeper/delete/${exercise.id}" method="post"
                      style="display:inline;">
                    <button type="submit" class="btn btn-danger btn-sm">Usuń</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>