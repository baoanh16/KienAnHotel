$(document).ready(function() {
    $('.canhcam-faq-1 .info:first-child .title').addClass('active');
    $('.canhcam-faq-1 .info .faq').hide();
    $('.canhcam-faq-1 .info:first-child .faq').show();
    $('.canhcam-faq-1 .title').on('click', (function() {
        if ($(this).parents('.info').find('.faq').is(':hidden') === true) {
            $('.canhcam-faq-1 .info .title').removeClass('active');
            $('.canhcam-faq-1 .info .faq').slideUp();
            $(this).parents('.info').find('.faq').slideDown();
            $(this).addClass('active');
        } else {
            $(this).removeClass('active');
            $(this).parents('.info').find('.faq').slideUp();

        }
    }));
})