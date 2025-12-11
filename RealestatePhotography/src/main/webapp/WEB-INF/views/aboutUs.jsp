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
.tools-section {
    padding: 20px;
    text-align: center;
}

.tools-title {
    font-size: 26px;
    font-weight: 700;
    margin-bottom: 20px;
    color: #333;
}

.tools-scroll {
    overflow: hidden;
    width: 100%;
    position: relative;
}

.scroll-content {
    display: flex;
    gap: 30px;
    animation: scroll 20s linear infinite;
}

.tool-card img {
    width: 80px;
    height: auto;
}

/* Hover effect */
.tool-card:hover {
    transform: scale(1.15);
    box-shadow: 0px 6px 20px rgba(0,0,0,0.3);
}

/* Keyframes for seamless infinite scroll */
@keyframes scroll {
    from {
        transform: translateX(0);
    }
    to {
        transform: translateX(-50%);
    }
}

/* MAIN CONTAINER */
.profile-section {
    display: flex;
    align-items: center;
    justify-content: flex-start;
    gap: 35px;
    padding: 40px;                      
    min-height: 260px;    
    background: #ffffff;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.1);
    margin: 20px 0;
}

.profile-image {
    width: 600px;                    
    height: 300px;
}


/* CONTENT STYLING */
.profile-content {
    max-width: 810px;
}

.profile-content h3 {
    font-size: 28px;
    font-weight: 700;
    margin-bottom: 12px;
    color: #222;
}

.profile-content p {
    margin-bottom: 15px;
    font-size: 18px;
    line-height: 1.7;
    color: #444;
}

/* Highlight Text */
.highlight {
    font-size: 19px !important;
    font-weight: 700;
    color: #ff9a00 !important;
}

/* RESPONSIVE DESIGN */
@media (max-width: 768px) {
    .profile-section {
        flex-direction: column;
        text-align: center;
        padding: 30px;
        min-height: auto;
    }

    .profile-image {
        width: 200px;
        height: 200px;
    }
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
	<div>
		<img class="profile-image" src="${pageContext.request.contextPath}/assets/images/Adobe-Certified.jpg"
		     alt="Profile Image">
     </div>
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
        <div class="scroll-content">
            <!-- First set -->
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/photoshop.png" alt="Adobe Photoshop"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/photoshop-lightroom.png" alt="Adobe Lightroom"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/premiere-pro.png" alt="Premiere Pro"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/after-effects.png" alt="After Effects"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/gimp.png" alt="GIMP"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/illustrator.png" alt="Illustrator"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/adobe-bridge.png" alt="Bridge"></div>

            <!-- Duplicate set for infinite scroll -->
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/photoshop.png" alt="Adobe Photoshop"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/photoshop-lightroom.png" alt="Adobe Lightroom"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/premiere-pro.png" alt="Premiere Pro"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/after-effects.png" alt="After Effects"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/gimp.png" alt="GIMP"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/illustrator.png" alt="Illustrator"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/adobe-bridge.png" alt="Bridge"></div>
            
             <!-- Duplicate set for infinite scroll -->
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/photoshop.png" alt="Adobe Photoshop"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/photoshop-lightroom.png" alt="Adobe Lightroom"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/premiere-pro.png" alt="Premiere Pro"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/after-effects.png" alt="After Effects"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/gimp.png" alt="GIMP"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/illustrator.png" alt="Illustrator"></div>
            <div class="tool-card"><img src="${pageContext.request.contextPath}/assets/images/adobe-bridge.png" alt="Bridge"></div>
        </div>
    </div>
</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>
