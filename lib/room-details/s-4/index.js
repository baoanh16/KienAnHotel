$('.canhcam-shop-details-4 .product-details .slidewrap .product-slide').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    dots: false,
    infinite: false,
    fade: true,
    asNavFor: '.product-nav',
});
$('.canhcam-shop-details-4 .product-details .slidewrap .product-nav').slick({
    slidesToShow: 3,
    asNavFor: '.product-slide',
    dots: false,
    focusOnSelect: true,
    infinite: false,
    swipe: true,
    swipeToSlide: true,
    vertical: true,
    verticalSwiping: true,
});
$(".canhcam-shop-details-4 .product-slide").lightGallery({ 
    thumbnail: true,
     animateThumb: false,
     showThumbByDefault: false,
     selector: '.item a'
});
$(document).ready(function() {

    $('.canhcam-shop-details-4 .input-number input').TouchSpin({
        min: 0,
        max: 100,
        buttondown_class: "btn btn-default",
        buttonup_class: "btn btn-default"
    });

});