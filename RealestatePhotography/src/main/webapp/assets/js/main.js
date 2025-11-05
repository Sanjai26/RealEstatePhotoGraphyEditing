$(document).ready(function() {
    // Sticky Header
    $(window).scroll(function() {
        $('.header').toggleClass('sticky', $(window).scrollTop() > 0);
    });

    // Before & After Image Slider
    const $slider = $('.image-comparison-slider');
    const $beforeImage = $('.before-image');
    const $sliderHandle = $('.slider-handle');
    let isSliding = false;

    const calculatePercentage = (e) => {
        const rect = $slider[0].getBoundingClientRect();
        const x = e.clientX - rect.left;
        const percentage = (x / rect.width) * 100;
        return Math.min(Math.max(percentage, 0), 100);
    };

    const updateSlider = (percentage) => {
        $beforeImage.css('width', `${percentage}%`);
        $sliderHandle.css('left', `${percentage}%`);
    };

    $slider.on('mousedown', () => {
        isSliding = true;
    });

    $(window).on('mousemove', (e) => {
        if (!isSliding) return;
        const percentage = calculatePercentage(e);
        updateSlider(percentage);
    });

    $(window).on('mouseup', () => {
        isSliding = false;
    });

    // Testimonial Carousel
    const $testimonials = $('.testimonial');
    let currentTestimonial = 0;

    function showTestimonial(index) {
        $testimonials.hide().eq(index).fadeIn();
    }

    function nextTestimonial() {
        currentTestimonial = (currentTestimonial + 1) % $testimonials.length;
        showTestimonial(currentTestimonial);
    }

    // Auto-advance testimonials every 5 seconds
    setInterval(nextTestimonial, 5000);

    // Initialize first testimonial
    showTestimonial(0);

    // Smooth scroll for navigation links
    $('a[href^="#"]').on('click', function(e) {
        e.preventDefault();
        const targetId = $(this).attr('href');
        if (targetId === '#') return;
        
        $('html, body').animate({
            scrollTop: $(targetId).offset().top
        }, 800);
    });
});