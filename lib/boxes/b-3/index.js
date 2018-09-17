$(document).ready(function(){
	$('.canhcam-boxes-3 .list-item').owlCarousel({
		items: 1,
		infinite: true,
		margin: 30,
		responsive:{
			480:{
				items: 2
			},
			720:{
				items: 3
			},
			992:{
				items: 4,
				autoplay: false,
			},
		}
	})
})