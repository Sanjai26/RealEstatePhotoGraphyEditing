<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">


<!-- Include Header -->
<jsp:include page="common/header.jsp" />
<style>
.carousel-control-prev, .carousel-indicators, .carousel-control-next {
	display: none !important;
}

.carousel-indicators button {
	display: none !important;
}
.carousel-item {
	background-size: cover;
	background-position: center;
	min-height: calc(100vh - 65px);
}

.carousel-indicators [data-bs-target] {
	width: 12px;
	height: 12px;
	border-radius: 50%;
	margin: 0 6px;
}

.services {
    padding: 1rem 5%;
    background: linear-gradient(180deg, rgba(248, 250, 252, 0.9), rgba(242, 246, 250, 0.95));
}

.services h2{
    text-align: center;
    font-size: 2.25rem;
    margin-bottom: 2rem;
    color: #0f172a;
    letter-spacing: 1px;
}
.service-cards{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 1.5rem;
    max-width: 1200px;
    margin: 0 auto;
    align-items: stretch;
}
.service-card{
    background: #fff;
    border-radius: 14px;
    padding: 1.6rem;
    box-shadow: 0 10px 30px rgba(2,6,23,0.06);
    text-align: center;
    transition: transform 0.35s ease, box-shadow 0.35s ease;
    display: flex;
    flex-direction: column;
    gap: 0.8rem;
}
.service-card i{
    font-size: 2.4rem;
    color: var(--primary-color);
    display: inline-block;
    margin-bottom: 0.5rem;
}
.service-card h3{
    font-size: 1.125rem;
    margin: 0.25rem 0 0.4rem;
    color: #0b1220;
}

.service-card .learn-more{
    display: inline-block;
    margin-top: 0.6rem;
    color: #0b1220;
    text-decoration: none;
    font-weight: 600;
    padding: 0.5rem 0.9rem;
    border-radius: 999px;
    background: linear-gradient(90deg, rgba(59,130,246,0.08), rgba(96,165,250,0.06));
    border: 1px solid rgba(59,130,246,0.12);
    transition: all 0.25s ease;
}
.service-card .learn-more:hover{
    transform: translateY(-4px);
    box-shadow: 0 8px 24px rgba(59,130,246,0.08);
}

/* Accent card for featured service (optional) */
.service-card.featured{
    background: linear-gradient(180deg,#ffffff,#f8fbff);
    border: 1px solid rgba(59,130,246,0.06);
    box-shadow: 0 14px 40px rgba(59,130,246,0.06);
}

@media (max-width: 768px){
    .services{ padding: 2.5rem 4%; }
    .services h2{ font-size: 1.6rem }
    .service-cards{ gap: 1rem }
    .service-card{ padding: 1.1rem }
    .service-card i{ font-size: 1.8rem }
}
</style>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600;700;800&display=swap');
.carousel-tag 
{
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    -webkit-backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.18);
    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.15);
    color: #fff;
    font-size: 0.75rem;
    font-weight: 500;
    letter-spacing: 1.2px;
    text-transform: uppercase;
    padding: 8px 16px;
    border-radius: 30px;
    margin-bottom: 1.5rem;
    position: relative;
    z-index: 2;
    min-width: 200px;
    max-width: 420px;
    width: fit-content;
    margin-left: auto;
    margin-right: auto;
    white-space: nowrap;
    transition: all 0.3s ease;
}

.carousel-tag:hover {
    background: rgba(255, 255, 255, 0.15);
    transform: translateY(-2px);
    box-shadow: 0 10px 40px 0 rgba(31, 38, 135, 0.2);
}

@media (max-width: 768px) {
    .carousel-tag {
        font-size: 0.65rem;
        padding: 6px 12px;
        margin-bottom: 1.25rem;
        min-width: 180px;
        max-width: 320px;
    }
}

@media (max-width: 480px) {
    .carousel-tag {
        min-width: 160px;
        max-width: 280px;
    }
}
.carousel-title
{
 	color: white;
}

/* Ensure all visible text inside the hero carousel is white for contrast */
#heroCarousel,
#heroCarousel .carousel-item,
#heroCarousel .carousel-item .text-white,
#heroCarousel h1,
#heroCarousel .carousel-title,
#heroCarousel p,
#heroCarousel .lead,
#heroCarousel .carousel-discription,
#heroCarousel .carousel-tag {
  color: #fff !important;
}

/* Make carousel buttons readable on darkened hero images */
#heroCarousel .button-carocel,
#heroCarousel .btn {
  color: #fff !important;
}

/* Provide a subtle translucent background for buttons that used btn-light */
#heroCarousel .button-carocel {
  background-color: rgba(255,255,255,0.12) !important;
  border: 1px solid rgba(255,255,255,0.18) !important;
  box-shadow: 0 6px 18px rgba(2,6,23,0.25);
}

/* Keep outline buttons white */
#heroCarousel .btn-outline-light {
  color: #fff !important;
  border-color: rgba(255,255,255,0.28) !important;
}
.btn-service:hover
{
 transition: all 0.3s ease;
}

/* Carousel title font (elegant, professional) */
#heroCarousel .carousel-caption h1,
#heroCarousel .carousel-caption .display-4 {
  font-family: Josefin Sans, sans-serif;
  font-weight: 700;
  letter-spacing: -0.6px;
  font-size: clamp(1.6rem, 3.8vw, 3.6rem);
  color: #fff !important;
}
body 
{
  font-family: Josefin Sans, sans-serif;
  background-color: #fff;
  color: #555;
  margin: 0;
}

.features-container {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    text-align: center;
    gap: 30px;
    background: #e67e220f;
    margin-top: 3px;
}

.feature {
    flex: 1 1 250px;
    max-width: 200px;
    padding: 5px;
}

.feature img {
  width: 60px;
  height: 60px;
  margin-bottom: 15px;
}

.feature h3 {
  color: #e67e22;
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 10px;
  text-transform: uppercase;
}

.feature p {
  font-size: 15px;
  line-height: 1.5;
  color: black;
}

@media (max-width: 768px) {
  .features-container {
    flex-direction: column;
    align-items: center;
  }
}
.fetures-title {
    width: 100%;
    text-align: center;
    color: black;
    font-size: 40px;
    margin-top: 15px;
    margin-bottom: 7px;
}
.testimonials-section {
    background-color: #eae8e8;
    padding: 30px 20px;
    font-family: Josefin Sans, sans-serif;
}

.testimonials-section h2 {
  width: 100%;
  text-align: center;
  color: black;
  font-size: 40px;
}

.testimonials-container {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 30px;
}

.testimonial-card {
  background: #fff;
  border-radius: 16px;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
  width: 280px;
  padding: 25px;
  text-align: center;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.testimonial-card:hover {
  transform: translateY(-8px);
  box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
}

.profile-pic {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  object-fit: cover;
  margin-bottom: 15px;
}

.testimonial-card h3 {
  font-size: 18px;
  color: #333;
  margin-bottom: 5px;
}

.role {
  font-size: 14px;
  color: #777;
  margin-bottom: 10px;
}

.stars {
  color: #ffb400;
  font-size: 18px;
  margin-bottom: 15px;
}

.review {
  font-size: 15px;
  color: #555;
  line-height: 1.6;
}
p.hero-subtitle {
    font-weight: 400;
    font-size: 21px;
}

.re-editing-section {
    padding: 20px 20px;
    background: #f9f9f9;
    font-family: 'Josefin Sans', sans-serif;
}

.re-container {
    max-width: 1200px;
    margin: auto;
}

.re-title {
    text-align: center;
    font-size: 28px;
    font-weight: 600;
    margin-bottom: 40px;
    line-height: 1.5;
}

.re-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 25px;
}

.re-card {
    background: #fff;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}

.re-card h3 {
    margin-bottom: 10px;
    font-size: 22px;
    font-weight: 600;
    color: #e67e22;
}

.re-card p {
    color: #555;
    font-size: 16px;
    line-height: 1.6;
}

.upload-container {
    display: flex;
    justify-content: space-between;
    gap: 30px;
    padding: 40px;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 5px 25px rgba(0,0,0,0.1);
    font-family: 'Josefin Sans', sans-serif;
}

.upload-box, .upload-form {
    flex: 1;
}

.upload-box h3, .upload-form h3 {
	color: black;
    font-size: 30px;
    margin-bottom: 15px;
    font-weight: 600;
}

.upload-box p {
    color: #666;
    margin-bottom: 20px;
}

.drop-area {
    height: 220px;
    border: 2px dashed #999;
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color: #777;
    cursor: pointer;
}

.drop-area:hover {
    border-color: #000;
}

.drop-area input {
    display: none;
}

/* FORM STYLING */
.form-group {
    margin-bottom: 18px;
}

.form-group label {
    display: block;
    margin-bottom: 6px;
    font-size: 15px;
}

.form-group input {
    width: 100%;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 15px;
}

.form-group textarea {
    width: 100%;
    padding: 0px;
    height: 65px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 15px;
}


.submit-btn {
    background: #e47717;
    color: #fff;
    padding: 12px 20px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    transition: 0.3s;
}

.submit-btn:hover {
    background:#e4771773;
    color: #000;
}

/* RESPONSIVE */
@media (max-width: 900px) {
    .upload-container {
        flex-direction: column;
    }
}


</style>

<!-- HERO: clean, valid markup -->
<section class="hero">
 <div id="heroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
    <div class="carousel-inner">
      <!-- Slide 1 -->
      <div class="carousel-item active" 
           style="background-image: url('${pageContext.request.contextPath}/assets/images/hero-img-1.jpg');">
        <div class="carousel-caption">
          <div class="hero-badge">THE #1 FULL-SERVICE REAL ESTATE MARKETING AGENCY</div>
          <h1 class="display-4 fw-bold mb-3">Edit your photos,</h1><h1> Conquer the market</h1>
          <p class="hero-subtitle">Turn dull property photos into vibrant, high-converting visuals that make listings stand out on every platform. From color correction to sky replacement – we make your photos irresistible.</p>
          <div class="btn-service">View Our Services</div>
        </div>
      </div>
      <!-- Slide 2 -->
      <div class="carousel-item" 
           style="background-image: url('${pageContext.request.contextPath}/assets/images/hero-img-2.jpg');">
        <div class="carousel-caption">
          <div class="hero-badge">TRANSFORM EMPTY SPACES INTO DREAM HOMES</div>
          <h1 class="display-4 fw-bold mb-3">Interior Design & Virtual Staging</h1>
          <p class="hero-subtitle">Bring empty rooms to life with realistic virtual staging, object removal, and décor enhancements that help buyers visualize their future home before stepping inside.</p>
          <div class="btn-service">See Before & After</div>
        </div>
      </div>
      <!-- Slide 3 -->
      <div class="carousel-item" 
           style="background-image: url('${pageContext.request.contextPath}/assets/images/hero-img-3.jpg');">
        <div class="carousel-caption">
          <div class="hero-badge">CAPTIVATING AERIAL & TWILIGHT PHOTOGRAPHY</div>
          <h1 class="display-4 fw-bold mb-3">Drone Edits & Day-to-Dusk Magic</h1>
          <p class="hero-subtitle">Highlight property beauty with breathtaking drone enhancements, perfect twilight skies, and lighting adjustments that add emotion and elegance to every shot.</p>
          <div class="btn-service">Get a Free Quote</div>
        </div>
      </div>
</section>

<section class="features-container">
<h2 class="fetures-title">Why We’re Your Best Choice</h2>
  <div class="feature">
    <img src="${pageContext.request.contextPath}/assets/images/stopwatch_4109118.png" 
         alt="Fast and Quality Editing Icon">
    <h3>Fast & Quality Editing</h3>
    <p>Experience quick 24-hour turnaround with top-quality professional edits 
       (48 hours for virtual staging).</p>
  </div>

  <div class="feature">
    <img src="${pageContext.request.contextPath}/assets/images/subscription-inactive.png" 
         alt="No Subscriptions Icon">
    <h3>No Subscriptions</h3>
    <p>Pay only for what you use with no subscriptions — just one fixed low rate per image.</p>
  </div>

  <div class="feature">
    <img src="${pageContext.request.contextPath}/assets/images/change.png" 
         alt="Unlimited Changes Icon">
    <h3>Unlimited Changes</h3>
    <p>Enjoy 100% satisfaction with our unlimited change guarantee.</p>
  </div>
  
  <div class="feature">
    <img src="${pageContext.request.contextPath}/assets/images/free-trial_5579376.png" 
         alt="Free Trial Icon">
    <h3>Free Trial</h3>
    <p>Receive3 image enhancements and 1 day to dusk edit when you sign up.</p>
  </div>

  <div class="feature">
    <img src="${pageContext.request.contextPath}/assets/images/documents.png" 
         alt="No Copyright Icon">
    <h3>No Copyright</h3>
    <p>We edit your images and return them to you — no ownership taken.</p>
  </div>

  <div class="feature">
    <img src="${pageContext.request.contextPath}/assets/images/24-7.png" 
         alt="Real Service Icon">
    <h3>Real Service</h3>
    <p>Our customer service experts are available 24/7 via live chat, phone, or email.</p>
  </div>
</section>
<section class="re-editing-section">
    <div class="re-container">
    <h1 class="re-main-title fetures-title">How Ajai studio works:</h1>
        <h2 class="re-title">
            The only real estate photo editing company you need for 
            photo outsourcing, video processing, and virtual staging.
        </h2>
        <div class="re-grid">
            <!-- UPLOAD -->
            <div class="re-card">
                <h3>Upload photos or videos of your property</h3>
                <p>Simply drag and drop your photos to submit a project in seconds. 
                We accept every photo from iPhones to DSLRs.</p>
            </div>
            <!-- EDITORS -->
            <div class="re-card">
                <h3>Real estate editors go to work</h3>
                <p>Every project you send will be assigned to an expert editor. 
                We enhance your HDR photos using the latest processing and retouching techniques.</p>
            </div>
            <!-- TESTIMONIAL -->
            <div class="re-card">
                <h3>High-quality work every time</h3>
                <p>“I chose this service for my real estate photo editing and the images I received were absolutely wonderful.”</p>
            </div>
            <!-- DELIVERY -->
            <div class="re-card">
                <h3>Receive high-quality photos the same day</h3>
                <p>Expect quality, consistency, and 99.98% on-time delivery. 
                We process all real estate photography types and deliver final images in high-resolution print and MLS formats.</p>
            </div>
        </div>
    </div>
</section>
<section class="upload-container">

    <!-- LEFT SIDE: DRAG & DROP -->
    <div class="upload-box">
        <h3>Upload Files</h3>
        <p>Drag & drop your photos here or click to browse</p>
        
        <div class="drop-area" id="dropArea">
            <p>Drop files here</p>
            <input type="file" id="fileInput" multiple>
        </div>
    </div>

    <!-- RIGHT SIDE: FORM -->
    <div class="upload-form">
        <h3>Get Your Free Trial</h3>

        <form action="#" method="post">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="fullName" required>
            </div>

            <div class="form-group">
                <label>Email ID</label>
                <input type="email" name="email" required>
            </div>

            <div class="form-group">
                <label>Description</label>
                <textarea name="description" rows="5" required></textarea>
            </div>

            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>

</section>

<section class="testimonials-section">
  <h2 class="align-center">What Our Clients Say</h2>
  <div class="testimonials-container">
    <div class="testimonial-card">
      <img src="${pageContext.request.contextPath}/assets/images/testimonial-1.jpg" alt="Client 1" class="profile-pic">
      <h3>John Peterson</h3>
      <p class="role">Real Estate Agent, New York</p>
      <div class="stars">⭐⭐⭐⭐⭐</div>
      <p class="review">"The photo edits were stunning! My listings now look professional and attract more buyers. Super fast delivery!"</p>
    </div>

    <div class="testimonial-card">
      <img src="${pageContext.request.contextPath}/assets/images/testimonial-4.jpg" alt="Client 2" class="profile-pic">
      <h3>Sophia Martinez</h3>
      <p class="role">Property Manager, Los Angeles</p>
      <div class="stars">⭐⭐⭐⭐⭐</div>
      <p class="review">"Exceptional editing quality. The team transformed dull interiors into bright, inviting spaces. Highly recommended!"</p>
    </div>

    <div class="testimonial-card">
      <img src="${pageContext.request.contextPath}/assets/images/testimonial-3.jpg" alt="Client 3" class="profile-pic">
      <h3>Michael Lee</h3>
      <p class="role">Broker, Chicago</p>
      <div class="stars">⭐⭐⭐⭐</div>
      <p class="review">"Quick turnaround and great communication. My clients love the enhanced daylight and virtual staging results."</p>
    </div>

    <div class="testimonial-card">
      <img src="${pageContext.request.contextPath}/assets/images/testimonial-2.jpg" alt="Client 4" class="profile-pic">
      <h3>Emily Johnson</h3>
      <p class="role">Photographer, Miami</p>
      <div class="stars">⭐⭐⭐⭐⭐</div>
      <p class="review">"The best editing service I’ve worked with! The color correction and sky replacement were flawless."</p>
    </div>
  </div>
</section>


<!-- Include the services list (keeps before/after slider implementation in a separate file) -->
<jsp:include page="common/footer.jsp" />