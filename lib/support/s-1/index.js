$(document).ready(function(){

	// $('.canhcam-about-5 .c-accordion__list')
	$('.canhcam-support-1 .list-detail .item .lead').hide();
	// $('.canhcam-support-1 .list-detail .content ').trigger('click');
	$('.canhcam-support-1 .list-detail .content ').click(function() {
		if($(this).next().is(':hidden') === true){
			$('.canhcam-support-1 .list-detail .lead').slideUp('fast');
			$('.canhcam-support-1 .list-detail .content ').removeClass('active');
			$(this).next().slideDown('fast');
			$(this).addClass('active');
		}else{
			$('.canhcam-support-1 .list-detail .content ').removeClass('active');
			$(this).next().slideUp('fast');
		}
	});
})