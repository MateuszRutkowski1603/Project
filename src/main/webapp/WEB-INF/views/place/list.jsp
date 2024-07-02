<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Lista miejsc</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css' />">
</head>
<body>
<div class="container mt-5">
    <h1>Lista miejsc</h1>
    <a href='/place/add' class="btn btn-primary mb-3">Dodaj miejsce</a>
    <a href="/dashboard" class="btn btn-primary mb-3">Powrót do menu</a>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nazwa obiektu</th>
            <th>Adres obiektu </th>
            <th>Akcje </th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="place" items="${places}">
            <tr>
                <td>${place.id}</td>
                <td>${place.placeName}</td>
                <td>${place.address}</td>

                <td>
                    <a href='/place/edit/${place.id}' class="btn btn-warning btn-sm">Edytuj</a>
                    <form action="${pageContext.request.contextPath}/place/delete/${place.id}" method="post"
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
