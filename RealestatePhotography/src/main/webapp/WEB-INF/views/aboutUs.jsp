<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
    <title>About Us - Real Estate Photo Editing</title>

<style>
body {
	font-family: Josefin Sans, sans-serif;
	margin: 0pc;
}


.about-section {
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

@media (max-width: 768px) {
    .about-section {
        padding-left: 30px;
        height: auto;
        padding-top: 80px;
        padding-bottom: 80px;
    }
    .content p {
        font-size: 18px;
    }
}

.profile-section {
    position: relative;
    width: 100%;
    height: 50vh;
    display: flex;
    align-items: center;
    padding-left: 120px;
    color: white;
}
.profile-section {
    display: flex;
    align-items: stretch;
    min-height: 350px;
    border-radius: 12px;
    overflow: hidden;
    margin: 25px 10px 25px 10px;
}

.profile-image {
    flex: 1.1;
}

.profile-content {
    flex: 1.5;
    background: #f7f7f7;
    color: #222;
    padding: 40px 30px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.profile-content h3 {
    font-size: 2rem;
    font-weight: 700;
    margin-bottom: 18px;
}

.profile-content p {
    font-size: 1.15rem;
    line-height: 1.7;
    color: #444;
}

.profile-content .highlight {
    margin-top: 10px;
    font-size: 1rem;
    color: #ffae00;
    font-weight: 600;
}

/* Responsive */
@media(max-width: 768px) {
    .profile-section {
        flex-direction: column;
    }

    .profile-image {
        height: 250px;
    }
}
/* Tools Section */
.tools-section {
    margin-top: 40px;
    background: #ffffff;
    padding: 40px 20px;
    border-radius: 12px;
}

.tools-title {
    text-align: center;
    font-size: 2rem;
    font-weight: 700;
    margin-bottom: 25px;
    color: #222;
}
.tool-card img {
    width: 80px;
    height: auto;
    filter: drop-shadow(0 4px 6px rgba(0,0,0,0.1));
}
.tools-scroll
{
	display: flex;
    gap: 184px;
}


</style>
</head>

<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<div class="about-section" style="background: url('${pageContext.request.contextPath}/assets/images/about-bg.jpg') no-repeat center center/cover;">
    <div class="overlay"></div>
    <div class="content">
        <h2>Who We Are</h2>
        <p>
            We are a dedicated team of professional real estate photo editors, photographers,
            designers, and digital imaging experts committed to transforming property visuals into
            market-ready masterpieces. With years of experience in real estate media production,
            we help agents, brokers, photographers, and property owners showcase their listings
            with stunning clarity and visual appeal.
        </p>
    </div>
</div>
<div class="profile-section">
    <div class="profile-image" style="background: url('${pageContext.request.contextPath}/assets/images/Adobe Certified.jpg') no-repeat center center/cover;"></div>
    
    <div class="profile-content">
        <h3>Certified Professional</h3>
        <p>
            Our lead editor holds a Professional Adobe Photoshop Certificate, demonstrating advanced expertise in photo enhancement, retouching, and creative editing. This certification ensures your real estate images are handled with the highest standards of quality and precision, using industry-leading techniques and tools.
        </p>
        <p class="highlight">Adobe Photoshop Certified Expert</p>
    </div>
</div>
<div class="tools-section">
    <h3 class="tools-title">Tools We Use</h3>
	    <div class="tools-scroll">
	        <div class="tool-card">
	            <img src="${pageContext.request.contextPath}/assets/images/photoshop.png" alt="Adobe Photoshop">
	        </div>
	
	        <div class="tool-card">
	            <img src="${pageContext.request.contextPath}/assets/images/photoshop-lightroom.png" alt="Adobe Lightroom">
	        </div>
	
	        <div class="tool-card">
	            <img src="${pageContext.request.contextPath}/assets/images/premiere-pro.png" alt="Premiere Pro">
	        </div>
	
	        <div class="tool-card">
	            <img src="${pageContext.request.contextPath}/assets/images/after-effects.png" alt="After Effects">
	        </div>
	
	        <div class="tool-card">
	            <img src="${pageContext.request.contextPath}/assets/images/gimp.png" alt="GIMP">
	        </div>
	
	        <div class="tool-card">
	            <img src="${pageContext.request.contextPath}/assets/images/illustrator.png" alt="Illustrator">
	        </div>
	    </div>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>
