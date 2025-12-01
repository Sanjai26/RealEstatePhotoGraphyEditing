<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Real Estate Photography - Professional Photo Editing Services</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<c:url value='/assets/css/styles.css'/>" rel="stylesheet">
    <link href="<c:url value='/assets/images/logo.jpg'/>" rel="icon">
    <!-- Bootstrap JavaScript and dependencies -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
</head>
<body>
    <!-- Header/Navbar -->
    <header class="header">
        <nav class="navbar">
            <div class="logo">
                <img src="<c:url value='/assets/images/logo.jpg'/>" alt="Logo">
            </div>
            <div class="nav-links">
                    <a href="<c:url value='/'/>" class="active">Home</a>
					<a href="<c:url value='/service'/>">Services</a>
                    <a href="<c:url value='/portfolio'/>">Our Galary</a>
                    <a href="<c:url value='/aboutUs'/>">About</a>
                    <a href="<c:url value='/contact'/>">Contact</a>
            </div>
        </nav>
    </header>