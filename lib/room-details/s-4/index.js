$('.canhcam-room-details-4 .slide-for').slick({
	slidesToShow: 1,
	slidesToScroll: 1,
	arrows: false,
	dots: false,
	infinite: false,
	fade: true,
	asNavFor: '.slide-nav',
});
$('.canhcam-room-details-4 .slide-nav').slick({
	slidesToShow: 3,
	asNavFor: '.slide-for',
	dots: false,
	focusOnSelect: true,
	infinite: false,
	swipe: true,
	swipeToSlide: true,
	vertical: true,
	verticalSwiping: true,
});
$(".canhcam-room-details-4 .product-slide").lightGallery({
	thumbnail: true,
	animateThumb: false,
	showThumbByDefault: false,
	selector: '.item a'
});