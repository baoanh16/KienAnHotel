$(function () {
	$('.canhcam-slider-3 .owl-carousel').owlCarousel({
		items: 1,
		loop: true,
		center: true,
		margin: 0,
		nav: true,
		navText: ['<span class="mdi mdi-chevron-left"></span>','<span class="mdi mdi-chevron-right"></span>'],
		dots: false,
		autoplay: true,
		autoplayTimeout: 5000,
		autoplayHoverPause: true,
		callbacks: true,
		responsive: {
			992: {
				items: 1.6,
				margin: 55,
			},
			1200: {
				items: 1.25,
				margin: 110,
			}
		}
	});

});
