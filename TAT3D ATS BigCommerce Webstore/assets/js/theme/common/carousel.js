import $ from 'jquery';
import 'slick-carousel';

export default function () {
    const $carousel = $('[data-slick]');

    if ($carousel.length) {
        $carousel.slick();
    }

    // Alternative image styling for IE, which doesn't support objectfit
    if (typeof document.documentElement.style.objectFit === 'undefined') {
        $('.heroCarousel-slide').each(() => {
            const $container = $(this);
            const imgUrl = $container.find('img').data('lazy');

            if (imgUrl) {
                $container.css('backgroundImage', `url(${imgUrl})`).addClass('compat-object-fit');
            }
        });
    }

    function footer_service() {
        $('.themevale_service').slick({
            fade: true,
            dots: true,
            arrows: false,
            autoplay: true,
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            mobileFirst: true,
            autoplaySpeed: 2000,
            adaptiveHeight: true,
            nextArrow: "<svg class='slick-next slick-arrow'><use xlink:href='#slick-arrow-next'></use></svg>", 
            prevArrow: "<svg class='slick-prev slick-arrow'><use xlink:href='#slick-arrow-prev'></use></svg>",
            responsive: [
            {
                breakpoint: 601,
                settings: {
                    fade: false,
                    dots: true,
                    arrows: true,
                    infinite: false,
                    slidesToShow: 3,
                    slidesToScroll: 3
                }
            },{
                breakpoint: 350,
                settings: {
                    dots: false,
                    arrows: true
                }
            }]
        });
    }
    footer_service();
}
