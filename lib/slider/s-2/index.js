$(function () {
	$('.canhcam-slider-2 .owl-carousel').owlCarousel({
		items: 1,
		loop: true,
		center: true,
		padding: 0,
		margin: 0,
		nav: false,
		dots: false,
		// autoplay: true,
		autoplayTimeout: 5000,
		autoplayHoverPause: true,
		callbacks: true,
	});

});
$(document).on('click', '.canhcam-slider-2 a.btn-down[href^="#"]', function (event) {
	var myHeader = $('header').outerHeight();
	event.preventDefault();

	$('html, body').animate({
		scrollTop: $($.attr(this, 'href')).offset().top - myHeader
	}, 500);
});
