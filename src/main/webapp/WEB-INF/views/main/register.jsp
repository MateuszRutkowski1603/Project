<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Rejestracja</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Rejestracja</h2>
    <form method="post" action="${pageContext.request.contextPath}/register">
        <div class="form-group">
            <label>Nazwa użytkownika:</label>
            <input type="text" class="form-control" name="username" required />
        </div>
        <div class="form-group">
            <label>Hasło:</label>
            <input type="password" class="form-control" name="password" required />
        </div>
        <button type="submit" class="btn btn-primary">Zarejestruj</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<jsp:include page="footer.jsp"/>
