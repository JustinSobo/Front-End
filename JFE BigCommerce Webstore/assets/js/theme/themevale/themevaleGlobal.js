import $ from 'jquery';
import utils from '@bigcommerce/stencil-utils';


export default function(context) {
    // setting menu on Mobile & tablet
    function menu_mobile() {
        if (($(window).width() < 1025) && ($('.navPages-container #menu').length)) {
            $('#menu').appendTo("#menu-mobile .themevale_MobileContent");
        }
        else if (($(window).width() >= 1025) && (!$('.navPages-container #menu').length)) {
            $('#menu-mobile #menu').appendTo(".navPages-container");
            $('.themevale_navPages-item.text-right').appendTo(".navPages-container");
        }
    }
    menu_mobile();
    function toggle_menu() {
        $('#menu-mobile .themevale_close').on('click', function(){
            $('.mobileMenu-toggle').trigger('click');
        });

        $('.bg-mobile').on('click', function(ev) {
            if ($('body').hasClass('has-activeNavPages')) {
                $('.mobileMenu-toggle').trigger('click');
            }
        });

        // $(document).on('click', function(ev) {
        //     if (($(ev.target).closest('#menu-mobile').length === 0) && ($(ev.target).closest('.mobileMenu-toggle').length === 0) && ($('body').hasClass('has-activeNavPages'))) {
        //         $('.mobileMenu-toggle').trigger('click');
        //     }
        // });

        $('#currency_dropdown').on('click', function(ev) {
            ev.preventDefault();
            $(this).toggleClass('is-open');
        });
    }
    toggle_menu();
    // setting Account on Mobile & tablet
    function toggle_account() {
        $('.account-icon').on('click', function(ev) {
            ev.preventDefault();
            $('body').toggleClass('themevale_open-Account');
        });

        $('#account-mobile .themevale_close').on('click', function(ev) {
            $('body').removeClass('themevale_open-Account');
        });

        $(document).on('click', function(ev) {
            if ($(ev.target).closest('#account-mobile').length === 0 && $(ev.target).closest('.account-icon').length === 0 && $('body').hasClass('themevale_open-Account')) {
                $('body').removeClass('themevale_open-Account');
            }
        });
    }
    toggle_account();
    // setting footer toggle on Mobile & tablet
	function footer_mobile() {
        if ($(window).width() <= 992) {
            if(!$('.themevale-infoFooter').hasClass('footerMobile')) {
                $('.themevale-infoFooter').addClass('footerMobile');
                $('.footer-dropdownmobile .footer-info-list').css('display', 'none');
            }
        } else {
            $('.themevale-infoFooter').removeClass('footerMobile');
            $('.footer-dropdownmobile').removeClass('open-dropdown');
            $('.footer-dropdownmobile .footer-info-list').css('display', 'block');
        }
    }
    footer_mobile();
    function toggle_footer() {
        $('.footer-dropdownmobile .footer-info-heading').on('click', function() {
            $(this).parent().toggleClass('open-dropdown');
            $(this).parent().find('.footer-info-list').slideToggle();
        });
    }
    toggle_footer();
    // setting position arrow for Product Carousel on ProductDetail page
    function arrow_position() {
        if ($(window).width() > 1024) {
            if ($('.productCarousel').length > 0 && $('.productCarousel .slick-arrow').length > 0 ) {
                var position = $('.productCarousel .card-figure').height();
                $('.productCarousel .slick-arrow').css('top', position/2);
            }
        }
    }
    arrow_position();

    // Back to top
    function back_to_top() {
        var offset = $(window).height()/2;
        const backToTop = $('#back-to-top');

        $(window).scroll(function() {
            ($(this).scrollTop() > offset) ? backToTop.addClass('is-visible') : backToTop.removeClass('is-visible ');
        });

        backToTop.on('click', function(event) {
            event.preventDefault();
            $('body,html').animate({
                scrollTop: 0
            }, 1000);
        });
    }
    back_to_top();

    $(window).resize(function() {
    	footer_mobile();
        menu_mobile();
    })
}
