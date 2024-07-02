<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">FootballApp</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/logout">Wyloguj się</a>
            </li>
        </ul>
    </div>
</nav>
<section class="dashboard-section">
    <div class="row dashboard-nowrap">
        <ul class="nav flex-column long-bg">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/player/list">
                    <span>Zawodnicy</span>
                    <i class="fas fa-users icon"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/exercise/list">
                    <span>Ćwiczenia</span>
                    <i class="fas fa-dumbbell icon"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/place/list">
                    <span>Miejsca</span>
                    <i class="fas fa-map-marker-alt icon"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/trainingSession/list">
                    <span>Sesje Treningowe</span>
                    <i class="fas fa-calendar-alt icon"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/playerExercise/list">
                    <span>Ćwiczenia Zawodników</span>
                    <i class="fas fa-running icon"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/trainingInformation/list">
                    <span>Informacje</span>
                    <i class="fas fa-calendar-alt icon"></i>
                </a>
            </li>
        </ul>
    </div>
</section>
<div class="container mt-5">
    <div class="jumbotron text-center">
        <h1 class="display-4">Powiadomienia </h1>
        <p class="lead">Kliknij żeby wejść w szczegóły</p>
        <a class="btn btn-primary btn-lg" href="/trainingInformation/list" role="button">Sprawdź</a>
    </div>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</div>
</body>


</html>
