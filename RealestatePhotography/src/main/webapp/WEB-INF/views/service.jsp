<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>
body {
	font-family: Josefin Sans, sans-serif;
	margin: 0pc;
}

.service-hero {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    padding: 92px 25px 10px 25px;
    background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.6)), url(your-image.jpg) center;
    color: #fff;
    height: 71%;
}

.service-content {
	width: 55%;
}

.service-content h1 {
	font-size: 42px;
	margin-bottom: 15px;
}

.service-desc {
	font-size: 18px;
	line-height: 1.7;
	max-width: 650px;
	margin-bottom: 35px;
}

.service-features {
	display: flex;
	gap: 20px;
}

.feature-box {
	background: rgba(255, 255, 255, 0.1);
	padding: 15px 20px;
	border-radius: 10px;
	width: 30%;
	text-align: center;
	font-size: 15px;
}

.feature-box .icon {
	font-size: 30px;
	display: block;
	margin-bottom: 10px;
}

/* FORM SECTION – with background image */
.service-form {
	width: 26%;
	position: relative;
	padding: 10px 20px 10px 20px;
	border-radius: 12px;
	background: url('form-bg.jpg') center/cover no-repeat;
	overflow: hidden;
}

/* Overlay for readability */
.service-form::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.55);
	z-index: 0;
}

.service-form * {
	position: relative;
	z-index: 1;
	color: #fff;
}

.service-form h2 {
	margin-bottom: -5px;
	font-size: 28px;
	margin-top: 8px;
}

.service-form p {
	margin-bottom: 10px;
}

.service-form label {
	display: block;
	margin: -5px 0 5px;
	font-weight: 600;
}

.service-form input {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 6px;
    margin-bottom: 8px;
    font-size: 15px;
    background: rgba(255, 255, 255, 0.2);
    color: #fff;
}

.service-form textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px !important;
    border: none;
    border-radius: 6px;
    margin-bottom: -10px;
    font-size: 15px;
    background: rgba(255, 255, 255, 0.2);
    color: #fff;
}

.service-form input::placeholder, .service-form textarea::placeholder {
	color: #ddd;
}

.service-form button {
	width: 100%;
	padding: 12px;
	background: #e67e22;
	color: #fff;
	border: none;
	border-radius: 6px;
	font-size: 16px;
	cursor: pointer;
	transition: 0.3s;
}

.service-form button:hover {
	background: #cf711f;
}

/* Mobile Responsive */
@media ( max-width : 768px) {
	.service-hero {
		flex-direction: column;
		padding: 30px;
	}
	.service-content, .service-form {
		width: 100%;
	}
	.service-features {
		flex-direction: column;
	}
	.feature-box {
		width: 100%;
	}
}
.feature-box {
    display: flex;
    column-gap: 5px;
    height: 69px;
    padding: 0px 0px 0px 10px;
    align-items: center;
    border: 1px solid white;
}
.service-hero-img
{
	width: 35px;
	height: 35px;
	filter:invert(1);
}
.feature-box p 
{
    margin-top: 0;
    margin-bottom: 0rem;
}
.service-second-container
{
	margin: 10px 10px 10px 10px;
	padding:10px 10px 10px 10px;
	font-weight:600;
}
.service-title 
{
    text-align: center;
    margin:0px 0px 15px 0px;;
}
.service-disc
{
	font-size: large;
    text-align: center;
}
</style>

<!DOCTYPE html>
<html>
<body>
<!-- Include Header -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<section class="service-hero"  style="background-image: url('${pageContext.request.contextPath}/assets/images/aesthetic-summer-holidays.jpg');">
    <div class="service-content">
        <h1>Real Estate Photo Editing Service</h1>
        <p class="service-desc">
            Delivering high-quality, expertly enhanced real estate photos that help agents, property owners, 
            and developers market homes faster and stand out in competitive markets.
        </p>

        <div class="service-features">
            <div class="feature-box">
               <img class="service-hero-img"src="${pageContext.request.contextPath}/assets/images/artificial-intelligence.png" />
                <p>High-quality, enhanced real estate photos</p>
            </div>

            <div class="feature-box">
                 <img class="service-hero-img"src="${pageContext.request.contextPath}/assets/images/stopwatch.png" />
                <p>Faster turnaround with 12–24 hour delivery</p>
            </div>

            <div class="feature-box">
                <img class="service-hero-img"src="${pageContext.request.contextPath}/assets/images/infiniti.png" />
                <p>Unlimited revisions until you're fully satisfied</p>
            </div>
        </div>
    </div>

    <div class="service-form">
        <h2>Get Your FREE Trial</h2>
        <p>Try our service with a free sample edit</p>

        <form>
            <label>Full Name *</label>
            <input type="text" placeholder="Enter your name" required>

            <label>Email Address *</label>
            <input type="email" placeholder="Enter your email" required>

            <label>Description *</label>
            <textarea placeholder="Tell us about your requirement" required></textarea>

            <button type="submit">Submit & Get Free Trial</button>
        </form>
    </div>
</section>
<section class="service-second-container">
	<div>
		<h1 class="service-title"> Our Real Estate Photo Editing Services </h1>
		<p class="service-disc">Leveraging our team of seasoned real estate photography editing experts, industry-standard tools, and customized approach, we retouch multiple property images into compelling marketing assets, maximizing their visual impact which can help to drive more leads. As a reliable real estate photo editing outsourcing company, our expertise lies in the following:</p>
	</div>
	<jsp:include page="/WEB-INF/views/services-list.jsp" />
</section>

<!-- Include the services list (keeps before/after slider implementation in a separate file) -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>
