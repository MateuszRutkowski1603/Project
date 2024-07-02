<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Lista Sesji Treningowych</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1>Lista Sesji Treningowych</h1>
    <a href='/trainingSession/add' class="btn btn-primary mb-3">Dodaj Sesję Treningową</a>
    <a href="/dashboard" class="btn btn-primary mb-3">Powrót do menu</a>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Typ</th>
            <th>Czas rozpoczęcia</th>
            <th>Czas trwania (minuty)</th>
            <th>Miejsce</th>
            <th>Gracze</th>
            <th>Akcje</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="trainingSession" items="${trainingSession}">
            <tr>
                <td>${trainingSession.id}</td>
                <td>${trainingSession.type}</td>
                <td>${trainingSession.startTime}</td>
                <td>${trainingSession.duration}</td>
                <td>${trainingSession.place.placeName}</td>
                <td>
                    <c:forEach var="player" items="${trainingSession.players}">
                        ${player.firstName} ${player.lastName}<br/>
                    </c:forEach>
                </td>
                <td>
                    <a href='/trainingSession/edit/${trainingSession.id}' class="btn btn-warning btn-sm">Edytuj</a>
                    <form action="${pageContext.request.contextPath}/trainingSession/delete/${trainingSession.id}"
                          method="post" style="display:inline;">
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
