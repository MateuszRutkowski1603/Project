<%--
  Created by IntelliJ IDEA.
  User: mateuszrutkowski
  Date: 18/06/2024
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edytuj informację</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value='../css/style.css' />">
</head>
<body>
<div class="container mt-5">
    <h1>Edytuj informację</h1>
    <form:form action="/trainingInformation/edit/${trainingInformation.id}" method="post" modelAttribute="trainingInformation" class="needs-validation">

        <div class="form-group">
            <label for="coach">Trener:</label>
            <form:input type="text" id="coach" path="coach" class="form-control"/>
            <form:errors path="coach" class="text-danger"/>
        </div>

        <div class="form-group">
            <label for="description">Informacja:</label>
            <form:input type="text" id="description" path="description" class="form-control"/>
            <form:errors path="description" class="text-danger"/>
        </div>

        <button type="submit" class="btn btn-primary">Zapisz zmiany</button>
        <a href="/trainingInformation/list" class="btn btn-secondary">Powrót do listy</a>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form:form>
</div>
<jsp:include page="../main/footer.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


