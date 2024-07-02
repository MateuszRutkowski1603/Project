<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Lista graczy</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css' />">
</head>
<body>
<div class="container mt-5">
    <h1>Lista graczy</h1>
    <a href='/player/add' class="btn btn-primary mb-3">Dodaj gracza</a>
    <a href="/dashboard" class="btn btn-primary mb-3">Powrót do menu</a>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Imię</th>
            <th>Nazwisko</th>
            <th>Wiek</th>
            <th>Wzrost</th>
            <th>Waga</th>
            <th>Wiodąca noga</th>
            <th>Rola</th>
            <th>Akcje</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="player" items="${players}">
            <tr>
                <td>${player.id}</td>
                <td>${player.firstName}</td>
                <td>${player.lastName}</td>
                <td>${player.age}</td>
                <td>${player.height}</td>
                <td>${player.weight}</td>
                <td>${player.leadingLeg}</td>
                <td>${player.role}</td>
                <td>
                    <a href='/player/edit/${player.id}'  class="btn btn-warning btn-sm">Edytuj</a>
                    <form action="${pageContext.request.contextPath}/player/delete/${player.id}" method="post"
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
