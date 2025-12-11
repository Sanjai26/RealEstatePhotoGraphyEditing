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
    
    <style>
    /* Glassmorphism Navbar */
    .glassy-nav {
        background: rgba(255, 255, 255, 0.15) !important;
        backdrop-filter: blur(12px);
        -webkit-backdrop-filter: blur(12px);
        border-radius: 16px;
        border: 1px solid rgba(255, 255, 255, 0.25);
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.15);
        transition: 0.3s ease-in-out;
    }

    .glassy-nav .nav-link {
        color: black !important;
        font-weight: 500;
        margin-left: 12px;
        transition: 0.3s;
    }

    /* Background for visibility */
    body {
        background: url('<c:url value="/assets/images/banner.jpg"/>') center/cover no-repeat fixed;
        min-height: 100vh;
    }
</style>
    
</head>
<body>
<header class="header">
    <nav class="navbar navbar-expand-lg glassy-nav fixed-top py-2">
        <div class="container">

            <!-- Logo -->
            <a class="navbar-brand d-flex align-items-center" href="<c:url value='/'/>">
                <img src="<c:url value='/assets/images/logo.jpg'/>" alt="Logo" 
                     style="height:45px; width:auto;">
            </a>

            <!-- Mobile Toggle Button -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNav" aria-controls="navbarNav"
                    aria-expanded="false" aria-label="Toggle navigation"
                    style="border-color: rgba(255,255,255,0.5);">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Menu Items -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto text-white">
                    <li class="nav-item">
                        <a class="nav-link active" href="<c:url value='/'/>">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/service'/>">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/portfolio'/>">Our Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/aboutUs'/>">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/ContactUs'/>">Contact</a>
                    </li>
                </ul>
            </div>

        </div>
    </nav>
</header>

