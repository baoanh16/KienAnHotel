$(document).ready(function(){
	$(".canhcam.gallery-3 .gallery-list .item .hidden").lightGallery({
		thumbnail:true
	});

	$('.canhcam.gallery-3 .gallery-list .item').each(function() {
		$(this).click(function(){
			$(this).find('.hidden a:first-child').trigger('click')
		})
	});
})