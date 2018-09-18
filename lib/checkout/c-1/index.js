function changeIMGtoDiv2(){
	$('.canhcam-checkout-1 .list-items .item figure').each(function () {
		var tmp = $(this).find('img').attr('src')
		$(this).append('<div class="thumb"></div>')
		$(this).find('.thumb').css({
			"background-image": "url(" + tmp + ")",
			"background-position": "center center",
			"background-size": "cover"
		})
	})
}
$(document).ready(function(){
	changeIMGtoDiv2();
})