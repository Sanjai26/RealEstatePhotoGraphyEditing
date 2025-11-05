<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section id="services-list" class="services-section">
    <style>
        .services-section {
            padding: 60px 0;
            background: #f8f9fa;
        }
        .service-card {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 15px rgba(0,0,0,0.1);
            margin-bottom: 30px;
            overflow: hidden;
            transition: transform 0.3s ease;
        }
        .service-card:hover {
            transform: translateY(-5px);
        }
        .image-compare-container {
            position: relative;
            height: 300px;
            overflow: hidden;
        }
        .service-card h3 {
            color: #333;
            font-size: 1.5rem;
            margin: 20px 0;
            padding: 0 20px;
        }
        .service-card p {
            color: #666;
            font-size: 1rem;
            line-height: 1.6;
            padding: 0 20px 20px;
        }
        .image-slider {
            position: relative;
            overflow: hidden;
        }
        .slider-handle {
            position: absolute;
            width: 40px;
            height: 40px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            border-radius: 50%;
            cursor: ew-resize;
            box-shadow: 0 2px 6px rgba(0,0,0,0.3);
            z-index: 10;
        }
        .slider-handle::after {
            content: '↔';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #333;
        }
        .image-before, .image-after {
            position: absolute;
            top: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .image-before {
            left: 0;
            clip-path: inset(0 50% 0 0);
        }
        .image-after {
            right: 0;
            clip-path: inset(0 0 0 50%);
        }
    </style>

    <div class="container">
        <h2 class="text-center mb-5">Our Photo Editing Services</h2>
        <div class="row">
            <!-- Image Enhancement -->
            <div class="col-lg-6 mb-4">
                <div class="service-card">
                    <div class="image-compare-container">
                        <img class="image-before" src="assets/images/enhancement-before.jpg" alt="Before Enhancement">
                        <img class="image-after" src="assets/images/enhancement-after.jpg" alt="After Enhancement">
                        <div class="slider-handle"></div>
                    </div>
                    <h3>Image Enhancement and Color Correction</h3>
                    <p>Transform your real estate photos with professional color correction, exposure adjustment, and image enhancement. We balance lighting, fix color temperatures, and enhance details to make your properties stand out.</p>
                </div>
            </div>

            <!-- Perspective Correction -->
            <div class="col-lg-6 mb-4">
                <div class="service-card">
                    <div class="image-compare-container">
                        <img class="image-before" src="assets/images/perspective-before.jpg" alt="Before Perspective">
                        <img class="image-after" src="assets/images/perspective-after.jpg" alt="After Perspective">
                        <div class="slider-handle"></div>
                    </div>
                    <h3>Perspective Correction</h3>
                    <p>Fix distorted angles and achieve perfect vertical lines in your real estate photos. Our perspective correction service ensures professional-looking images that showcase properties accurately.</p>
                </div>
            </div>

            <!-- HDR Editing -->
            <div class="col-lg-6 mb-4">
                <div class="service-card">
                    <div class="image-compare-container">
                        <img class="image-before" src="assets/images/hdr-before.jpg" alt="Before HDR">
                        <img class="image-after" src="assets/images/hdr-after.jpg" alt="After HDR">
                        <div class="slider-handle"></div>
                    </div>
                    <h3>HDR Real Estate Photo Editing</h3>
                    <p>Blend multiple exposures to create stunning, balanced images that show both interior and exterior details perfectly, even in challenging lighting conditions.</p>
                </div>
            </div>

            <!-- Object Removal -->
            <div class="col-lg-6 mb-4">
                <div class="service-card">
                    <div class="image-compare-container">
                        <img class="image-before" src="assets/images/removal-before.jpg" alt="Before Removal">
                        <img class="image-after" src="assets/images/removal-after.jpg" alt="After Removal">
                        <div class="slider-handle"></div>
                    </div>
                    <h3>Object Removal/Addition</h3>
                    <p>Clean up your real estate photos by removing unwanted objects or adding essential elements. Perfect for decluttering spaces or enhancing curb appeal.</p>
                </div>
            </div>

            <!-- Virtual Staging -->
            <div class="col-lg-6 mb-4">
                <div class="service-card">
                    <div class="image-compare-container">
                        <img class="image-before" src="assets/images/staging-before.jpg" alt="Before Staging">
                        <img class="image-after" src="assets/images/staging-after.jpg" alt="After Staging">
                        <div class="slider-handle"></div>
                    </div>
                    <h3>Virtual Staging and Renovations</h3>
                    <p>Transform empty spaces into beautifully furnished rooms or visualize renovation potential with our virtual staging service. Help buyers see the true potential of any property.</p>
                </div>
            </div>

            <!-- Sky Replacement -->
            <div class="col-lg-6 mb-4">
                <div class="service-card">
                    <div class="image-compare-container">
                        <img class="image-before" src="assets/images/sky-before.jpg" alt="Before Sky">
                        <img class="image-after" src="assets/images/sky-after.jpg" alt="After Sky">
                        <div class="slider-handle"></div>
                    </div>
                    <h3>Sky Replacement</h3>
                    <p>Replace dull or overcast skies with beautiful blue skies or dramatic sunset scenes to enhance your property's exterior shots and maximize curb appeal.</p>
                </div>
            </div>

            <!-- Flambient -->
            <div class="col-lg-6 mb-4">
                <div class="service-card">
                    <div class="image-compare-container">
                        <img class="image-before" src="assets/images/flambient-before.jpg" alt="Before Flambient">
                        <img class="image-after" src="assets/images/flambient-after.jpg" alt="After Flambient">
                        <div class="slider-handle"></div>
                    </div>
                    <h3>Flambient Photo Editing</h3>
                    <p>Blend flash and ambient light exposures to create perfectly balanced interior photos that show both window views and interior details in stunning clarity.</p>
                </div>
            </div>

            <!-- Aerial -->
            <div class="col-lg-6 mb-4">
                <div class="service-card">
                    <div class="image-compare-container">
                        <img class="image-before" src="assets/images/aerial-before.jpg" alt="Before Aerial">
                        <img class="image-after" src="assets/images/aerial-after.jpg" alt="After Aerial">
                        <div class="slider-handle"></div>
                    </div>
                    <h3>Aerial Photo Editing</h3>
                    <p>Enhance your drone photography with professional editing that improves clarity, corrects perspective, and highlights property features from above.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery is provided by the site's header include; do not reload here -->
    
    <script>
        $(document).ready(function() {
            $('.image-compare-container').each(function() {
                const container = $(this);
                const handle = container.find('.slider-handle');
                const beforeImg = container.find('.image-before');
                const afterImg = container.find('.image-after');
                
                // Handle mouse/touch events
                handle.on('mousedown touchstart', function(e) {
                    e.preventDefault();
                    container.addClass('active');
                    
                    const moveHandler = function(e) {
                        if (!container.hasClass('active')) return;
                        
                        const containerWidth = container.width();
                        const containerOffset = container.offset();
                        const pos = (e.type === 'mousemove' ? e.pageX : e.touches[0].pageX) - containerOffset.left;
                        const percentage = Math.max(0, Math.min(100, (pos / containerWidth) * 100));
                        
                        // Update handle position and clip paths
                        handle.css('left', percentage + '%');
                        beforeImg.css('clip-path', `inset(0 ${100 - percentage}% 0 0)`);
                        afterImg.css('clip-path', `inset(0 0 0 ${percentage}%)`);
                    };
                    
                    $(document).on('mousemove touchmove', moveHandler);
                    $(document).on('mouseup touchend', function() {
                        container.removeClass('active');
                        $(document).off('mousemove touchmove', moveHandler);
                    });
                });
            });
        });
    </script>
</section>