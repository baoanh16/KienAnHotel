$(function () {
	if ($('.canhcam-carousel-4 .owl-carousel').length) {
		$('.canhcam-carousel-4 .owl-carousel').owlCarousel({
			animateIn: 'fadeIn',
			animateOut: 'fadeOut',
			items: 1,
			loop: true,
			center: false,
			// padding: 10,
			margin: 30,
			navText: ['<span class="mdi mdi-chevron-left"></span>', '<span class="mdi mdi-chevron-right"></span>'],
			nav: true,
			dots: false,
			autoplay: true,
			autoplayTimeout: 3000,
			autoplayHoverPause: false,
			callbacks: true,
			responsive: {
				480: {
					items: 2
				},
				720: {
					items: 3
				},
				992: {
					items: 4
				}

			}
		});
	}

});
