function routeHome() {
	(function($) {

		TweenMax.staggerFrom('h3.welcome-sub-title,h1.welcome-title, .welcome .btn', 1, {
			opacity: 0,
			marginTop: "+=20",
			//scale: 1.8,
			ease: Power2.easeInOut
		}, 0.5);
		
		//TweenMax.staggerFrom('h1.welcome-title', 1, {opacity:0, scale:1.2}, 0.2)
		jQuery(window).load(function() {
			jQuery('#loading-wrapper').fadeOut(1000);
		});

	})(jQuery);
}
