<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Strona główna - Aplikacja Trenerska</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <style>
        .footer {
            background-color: #f8f9fa;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<!-- Nawigacja -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="">Aplikacja Trenerska</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="/login">Logowanie</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/register">Rejestracja</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/about">O aplikacji</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/contact">Kontakt</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-5">
    <div class="jumbotron text-center">
        <h1 class="display-4">Witamy na stronie głównej Aplikacji Trenerskiej</h1>
        <p class="lead">Najlepsze narzędzie do zarządzania treningami i monitorowania postępów.</p>
        <a class="btn btn-primary btn-lg" href="/register" role="button">Dołącz teraz</a>
    </div>

    <h2 class="mb-4">Najnowsze wiadomości</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card news-card">
                <img src="https://via.placeholder.com/400x200" class="card-img-top" alt="News Image">
                <div class="card-body">
                    <h5 class="card-title">Nowa funkcjonalność</h5>
                    <p class="card-text">Dodaliśmy nową funkcję analizy wyników.</p>
                    <a href="#" class="btn btn-primary">Czytaj więcej</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card news-card">
                <img src="https://via.placeholder.com/400x200" class="card-img-top" alt="News Image">
                <div class="card-body">
                    <h5 class="card-title">Aktualizacja systemu</h5>
                    <p class="card-text">System został zaktualizowany do wersji 2.0.</p>
                    <a href="#" class="btn btn-primary">Czytaj więcej</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card news-card">
                <img src="https://via.placeholder.com/400x200" class="card-img-top" alt="News Image">
                <div class="card-body">
                    <h5 class="card-title">Nowe materiały szkoleniowe</h5>
                    <p class="card-text">Sprawdź nasze nowe materiały wideo i artykuły.</p>
                    <a href="#" class="btn btn-primary">Czytaj więcej</a>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Stopka -->
<footer class="footer mt-5">
    <div class="container">
        <span class="text-muted">© 2024 Aplikacja Trenerska. Wszelkie prawa zastrzeżone.</span>
    </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
