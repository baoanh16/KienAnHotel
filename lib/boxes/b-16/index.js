// function getBG16(time) {
// 	$('.canhcam-boxes-16 .item').each(function () {
// 		var newgt = $(this).find('figcaption p').innerHeight()
// 		$(this).find('figcaption p').css({
// 			"height": "0px",
// 			"overflow": "hidden"
// 		})
// 		var em = $(this).find('figure').innerHeight()
// 		var newg = $(this).find('figcaption').innerHeight()
// 		$(this).hover(function () {
// 			$(this).find('figcaption').stop().animate({
// 				height: em + "px"
// 			}, {
// 				duration: time,
// 				complete: function () {}
// 			})
// 			$(this).find('figcaption p').stop().animate({
// 				height : newgt + "px"
// 			}, {
// 				duration: time,
// 				complete: function () {}
// 			})
// 		  }, function () {
// 			$(this).find('figcaption').stop().animate({
// 				height : newg + "px"
// 			}, {
// 				duration: time,
// 				complete: function () {}
// 			})
// 			$(this).find('figcaption p').stop().animate({
// 				height : "0px"
// 			}, {
// 				duration: time,
// 				complete: function () {}
// 			})
// 		  });
// 	})
// }

// $(document).ready(function () {
// 	// if ($(window).width() > CANHCAM_APP.CHANGE_GRID) {
// 	// 	getBG16(1000)
// 	// }
// 	if($(window).width() > 992){

// 		// hoverNews();
// 	}
// });


// function hoverNews() {
// 	$('.canhcam-boxes-16 .item figure').on('mouseenter', function () {
// 		event.preventDefault()
// 		console.log(1)
// 		$(this).find('p').slideDown()
// 		$(this).addClass('active')
// 	})
// 	$('.canhcam-boxes-16 .item figure').on('mouseleave	', function () {
// 		event.preventDefault();
// 		console.log(2)
// 		$(this).find('p').slideUp()
// 		$(this).removeClass('active')
// 	})
// }


function getBG16(time) {
	$('.canhcam-boxes-16 .item , .canhcam-news-4 .item').each(function () {
		var newgt = $(this).find('figcaption p').innerHeight()
		$(this).find('figcaption p').css({
			"height": "0px",
			"overflow": "hidden"
		})
		var em = $(this).find('figure').innerHeight()
		var newg = $(this).find('figcaption').innerHeight()
		$(this).hover(function () {
			$(this).find('figcaption').stop().animate({
				height: em + "px"
			}, {
				duration: time,
				complete: function () {}
			})
			$(this).find('figcaption p').stop().animate({
				height : newgt + "px"
			}, {
				duration: time,
				complete: function () {}
			})
		  }, function () {
			$(this).find('figcaption').stop().animate({
				height : newg + "px"
			}, {
				duration: time,
				complete: function () {}
			})
			$(this).find('figcaption p').stop().animate({
				height : "0px"
			}, {
				duration: time,
				complete: function () {}
			})
		  });
	})
}

$(document).ready(function () {
	if ($(window).width() > CANHCAM_APP.CHANGE_GRID) {
		getBG16(1000)
	}
});
