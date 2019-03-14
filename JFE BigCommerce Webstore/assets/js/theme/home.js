import $ from 'jquery';
import PageManager from './page-manager';
import parallax from './themevale/parallax/jquery.parallax-scroll.min';

export default class Home extends PageManager {
	onReady() {
		var productsShowMore = function() {
			var productsToShow;
			if (($(window).width() < 993) && ($(window).width() > 600)) {
				productsToShow = 3;
				if ($('[data-event="show more"] .productGrid .product').length > productsToShow) {
					$('[data-event="show more"] .productGrid .product').css({ 'display': 'inline-block' });
					$('[data-event="show more"] .productGrid .product:nth-child(n + 4)').css({ 'display': 'none' });

					if (!$('[data-event="show more"] .themevale_container .themevale_showMoreProduct').length) {
						$('[data-event="show more"] .themevale_container').append('<div class="themevale_showMoreProduct"><a class="button big-button button-transparent" href="javascript:void(0);">Show More</a></div>');
					}
				}
			} else {
				productsToShow = 4;
				if ($('[data-event="show more"] .productGrid .product').length > productsToShow) {
					$('[data-event="show more"] .productGrid .product').css({ 'display': 'inline-block' });
					$('[data-event="show more"] .productGrid .product:nth-child(n + 5)').css({ 'display': 'none' });

					if (!$('[data-event="show more"] .themevale_container .themevale_showMoreProduct').length) {
						$('[data-event="show more"] .themevale_container').append('<div class="themevale_showMoreProduct"><a class="button big-button button-transparent" href="javascript:void(0);">Show More</a></div>');
					}
				}
			}
			$('.themevale_showMoreProduct a').on('click', function(e) {
				e.preventDefault();
				var listProducts = $(this).parents('[data-event="show more"]');
				listProducts.find('.productGrid .product:hidden:lt(' + productsToShow + ')').show();
				if (listProducts.find('.productGrid .product:hidden').length === 0) {
					$(this).parent().css({ 'display': 'none' });
				}
			});
		}
		productsShowMore();
	}
}
