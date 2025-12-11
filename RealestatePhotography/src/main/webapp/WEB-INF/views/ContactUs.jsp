<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About & Contact | Real Estate Photo Editing</title>

    <!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- Page CSS -->
    <style>
body {
    font-family: 'Josefin Sans', sans-serif;
    margin: 0;
}

.contact-section {
position: relative;
width: 100%;
height: 50vh;
display: flex;
align-items: center;
padding-left: 120px;
color: white;
}

.overlay {
    position: absolute;
    inset: 0;
    background: rgba(0, 0, 0, 0.55);
}

.content {
    position: relative;
    max-width: 75%;
    z-index: 2;
    margin-top: 35px;
}

.content h2 {
    font-size: 42px;
    margin-bottom: 20px;
    font-weight: 600;
}

.content p {
    font-size: 21px;
    letter-spacing: 1px;
}

.glass-card {
    background: rgba(255, 255, 255, 0.12);
    backdrop-filter: blur(10px);
    border-radius: 16px;
    border: 1px solid rgba(255, 255, 255, 0.25);
    padding: 30px;
}

.form-control,
.form-select {
    background: rgba(255, 255, 255, 0.15);
    border: 1px solid rgba(255, 255, 255, 0.4);
    color: #fff;
}

.form-control:focus {
    background: rgba(255, 255, 255, 0.20);
    border-color: #00eaff;
    box-shadow: 0 0 6px #00eaff;
    color: #fff;
}

::placeholder {
    color: #e1e1e1 !important;
}

.custom-btn {
    background: #ffa800;
    border: none;
    font-weight: 600;
    padding: 10px 22px;
    border-radius: 8px;
    transition: 0.3s;
}

.custom-btn:hover {
    background: #00b8d6;
}

.contact-info i {
    font-size: 22px;
    margin-right: 10px;
    color: #00eaff;
}
.contact-container
{
	padding-top:30px;
}
.contact-us-header
{
	font-weight: 700;
}

.contactus-header-mess
{
	color : #ffa800;
	font-weight:700;
}
.form-label
{
	font-weight:600;
}
.contact-img
{
	width:20px;
	margin-right:10px;
}

.work-banner {
    display: flex;
    width: 100%;
    height: 150px;
    color: white;
}

.banner-left {
    width: 25%;
    background-color: #262a35; /* dark grey */
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    height: 125px;
    margin-top: 20px;
}

.banner-right {
    width: 75%;
    background-color: #000; /* black */
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    height: 125px;
    margin-top: 20px;
}

.sub-title {
    color: #ffa800;     /* bright red */
    margin: 0;
    font-size: 22px;
    font-weight: 700;
    letter-spacing: 1px;
}

.main-title {
    color: #fff;
    margin: 5px 0 0;
    font-size: 48px;
    font-weight: 800;
}

.right-title 
{
	color: #ffa800;
    font-size: 39px;
    font-weight: 1000;
    letter-spacing: 1px;
}



    </style>
</head>



<jsp:include page="/WEB-INF/views/common/header.jsp" />
<body>
<!-- ABOUT US SECTION -->
<div class="contact-section" style="background: url('${pageContext.request.contextPath}/assets/images/about-bg.jpg') no-repeat center center/cover;">
    <div class="overlay"></div>
    <div class="content">
        <h2 class="mb-3">Contact Us</h2>
        <p>
            Have questions or need assistance with real estate photo editing services?
            Our support team is here to help you. Feel free to reach out for inquiries,
            project discussions, pricing details, or technical support. We respond quickly
            and ensure you get the assistance you need.
        </p>
    </div>
</div>

<div class="work-banner-container">
<div class="work-banner">
    <div class="banner-left">
        <h4 class="sub-title">OUR EDITING TEAM</h4>
        <h1 class="main-title">WORK 24/7</h1>
    </div>
    <div class="banner-right">
        <h2 class="right-title">EDITING WITHOUT LIMITS</h2>
    </div>
</div>
</div>


<!-- CONTACT SECTION -->
<div class="container contact-container">
    <h2 class="text-center  mb-4 contact-us-header">HOW CAN WE HELP?</h2>
    <div class="row g-4">
        <!-- Contact Form -->
        <div class="col-md-7">
            <div class="glass-card">
                <h4 class="contactus-header-mess mb-3">Send us a Message</h4>
                <form action="<c:url value='/sendContact'/>" method="post">
                    <div class="mb-3">
                        <label class="form-label ">Your Name</label>
                        <input type="text" name="name" class="form-control" placeholder="Enter your name" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label ">Email Address</label>
                        <input type="email" name="email" class="form-control" placeholder="name@example.com" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label ">Mobile Number</label>
                        <input type="text" name="mobile" class="form-control" placeholder="9876XXXXXX" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label ">Message</label>
                        <textarea name="message" class="form-control" rows="4" placeholder="Your message..." required></textarea>
                    </div>
                    <button type="submit" class="custom-btn">Send Message</button>
                </form>
            </div>
        </div>
        <div class="col-md-5">
            <div class="glass-card">
			    <h4 class="mb-3">Get in Touch</h4>
			    <p class="contact-info">
			        <img class="contact-img" src="${pageContext.request.contextPath}/assets/images/phone-call-icon.png" alt="Phone" class="icon"> 
			        +91 98765 43210
			    </p>
			    <p class="contact-info">
			        <img  class="contact-img" src="${pageContext.request.contextPath}/assets/images/mail-icon.png" alt="Email" class="icon"> 
			        support@realestatephoto.com
			    </p>
			    <p class="contact-info">
			        <img class="contact-img" src="${pageContext.request.contextPath}/assets/images/instagram-icon.png" alt="Email" class="icon"> 
			        support@realestatephoto.insta
			    </p>
			    <p class="contact-info">
			        <img  class="contact-img" src="${pageContext.request.contextPath}/assets/images/maps-and-flags-icon.png" alt="Location" class="icon"> 
			        Chennai, Tamil Nadu, India
			    </p>
			</div>
        </div>

    </div>
</div>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>


</html>
