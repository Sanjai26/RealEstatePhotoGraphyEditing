<!-- Footer -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <style>
/* Elegant footer styles (scoped to this page) */
.footer {
	background: linear-gradient(180deg, #0b1220 0%, #0f172a 100%);
	color: rgba(255, 255, 255, 0.92);
	padding: 3.25rem 5%;
	border-top: 1px solid rgba(255, 255, 255, 0.04);
}

.footer-content {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 1.5rem;
	max-width: 1200px;
	margin: 0 auto 1.5rem;
	align-items: start;
}

.footer-section h3 {
	margin-bottom: 1rem;
	font-size: 1.05rem;
	color: #ffffff;
	letter-spacing: 0.6px;
}

.footer-section ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.footer-section ul li {
	margin-bottom: 0.5rem;
}

.footer-section ul li a {
	color: rgba(255, 255, 255, 0.82);
	text-decoration: none;
	transition: color 0.2s ease;
}

.footer-section ul li a:hover {
	color: #60a5fa;
}

.social-icons {
	display: flex;
	gap: 0.6rem;
	align-items: center;
}

.social-icons a {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.04);
	color: #fff;
	text-decoration: none;
	transition: all 0.25s ease;
}

.social-icons a:hover {
	transform: translateY(-3px);
	box-shadow: 0 6px 20px rgba(59, 130, 246, 0.12);
	background: linear-gradient(135deg, #3b82f6, #60a5fa);
	color: #fff;
}

.footer-bottom {
	text-align: center;
	padding-top: 1rem;
	border-top: 1px solid rgba(255, 255, 255, 0.03);
	color: rgba(255, 255, 255, 0.65);
	font-size: 0.95rem;
}

/* Small screens: stack */
@media ( max-width : 768px) {
	.footer-content {
		grid-template-columns: 1fr;
		gap: 1rem;
	}
	.social-icons a {
		width: 36px;
		height: 36px
	}
	.footer {
		padding: 2rem 4%;
	}
}
</style>

    <footer class="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h3>Company</h3>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Services</h3>
                <ul>
                    <li><a href="#">Photo Editing</a></li>
                    <li><a href="#">Virtual Staging</a></li>
                    <li><a href="#">Floor Plans</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Connect</h3>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2025 Real Estate Photography. All rights reserved.</p>
        </div>
    </footer>

	<script src="<c:url value='/assets/js/main.js' />"></script>
</body>
</html>