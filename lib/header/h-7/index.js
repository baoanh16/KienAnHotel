function CCHeader7() {
	$('.canhcam-header-7 .navbar-toggler').on("click", function () {
		$('.canhcam-header-7').toggleClass('expand')
	});
	$('.canhcam-header-7 .btnsearch .btn').on("click", function () {
		$('.canhcam-header-7 .search').toggleClass('active')
		$('.canhcam-header-7 .btnsearch').toggleClass('active')
	});
	$('.canhcam-header-7 .closebnt').on("click", function () {
		$('.canhcam-header-7').toggleClass('expand')
	});
};

function getMapto() {
	if ($(window).width() <= CANHCAM_APP.CHANGE_GRID_SM) {
		$('[k-menu-map-to]').each(function () {
			var getTo = $(this).attr('k-menu-map-to')
			$(getTo).html($(this).clone().removeAttr('k-menu-map-to').show())
			$(this).hide()
		})
	} else {
		$('[k-menu-map-to]').each(function () {
			var getTo = $(this).attr('k-menu-map-to')
			$(getTo).html('')
			$(this).show()
		})
	}
}

$(function () {
	CCHeader7();
	getMapto()
})


$(window).resize(function () {
	getMapto()
	$('.canhcam-header-7').removeClass('expand')
	$('.canhcam-header-7 .search').removeClass('active')
	$('.canhcam-header-7 .btnsearch').removeClass('active')
})

$(document).ready(function(){
	$('.canhcam-header-7 .input-daterange input').each(function() {
		$(this).datepicker('clearDates');
	});
	$('.canhcam-header-7 .ka-modal .input-group').on('click',function(){
		$(this).addClass('active')
	});
	$('.canhcam-header-7 .ka-modal .js-example-basic-single').select2();
	$('.canhcam-header-7 .cart-toggle').on('click',function(){
		$('#ka-modal').toggleClass('active')
	});
	// $('body').on('click',function(){
	// 	$('.canhcam-header-7 .ka-modal').removeClass('active')
	// })
})
