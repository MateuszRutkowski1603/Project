<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Kontakt</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="main-container">
    <h1>Kontakt</h1>
    <p>Formularz kontaktowy:</p>
    <form action="/contact" method="post" class="needs-validation">
        <div class="form-group">
            <label for="name">Imię:</label>
            <input type="text" id="name" name="name" class="form-control" placeholder="Podaj imię" required>
        </div>
        <div class="form-group">
            <label for="email">Adres email:</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="Podaj adres email" required>
        </div>
        <div class="form-group">
            <label for="message">Wiadomość:</label>
            <textarea id="message" name="message" class="form-control" rows="5" placeholder="Podaj wiadomość" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Wyślij</button>
        <a href="/" class="btn btn-secondary">Powrót do strony głównej</a>
    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<jsp:include page="footer.jsp"/>


