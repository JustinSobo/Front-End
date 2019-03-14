function routeCommon() {
	(function($) {

		//add page load trasition
		$(document).on("page:fetch", function() {
			
			NProgress.start();

			TweenMax.staggerFrom('h3.welcome-sub-title,h1.welcome-title, .welcome .btn', 1, {
				opacity: 0,
				//scale: 1.8
			}, 0.5);

		});

		$(document).on("page:change", function() {
			
			NProgress.done();
			
		//TweenMax.staggerFromTo('section.module-wrap', 1, {
		//opacity: 0,
		//}, {
		//opacity: 1,
		//}, 0.5);

		});

		$(document).on('page:restore', function() {
			NProgress.remove();
		});

		//Make items 100% height
		//Dynamically assign height
		
			function sizeContent() {
				var windowSize = $(window).width();
				if ($(window).width() > 960){
					var newHeight = $("html").height() + "px";
					$("div.full-height").css("height", newHeight);
				}
			}
			//Initial load of page
			$(document).ready(sizeContent);
			//Every resize of window
			$(window).resize(sizeContent);

		//vertical center
		$('.align-vertical').flexVerticalCenter();

		//show navigation
		$('[data-toggle=navoverlay]').click(function() {
			$('.wrap').toggleClass('side-nav-active');
			$('.nav-overlay').toggleClass('active');
			$('.navbar-toggle,.toggle-text').toggleClass('active');
			TweenMax.staggerFrom(".nav-overlay.active #menu-primary-navigation li", 0.15, {
				top: 30,
				opacity: 0,
				//delay: 0.50,
				ease: Power4.easeInOut
			}, 0.1);
		});
		jQuery('.home #nav, .page-template-template-builder-php #nav').affix({
			offset: {
			top: 900
			// top: jQuery('#slide-1').height()-$('#nav').height()
			}
		});

		//animate nav out
		$('#menu-primary-navigation li a').click(function() {
			TweenMax.staggerTo(".nav-overlay.active #menu-primary-navigation li ", 0.35, {
				top: -30,
				opacity: 0,
				ease: Power1.easeInOut
			}, 0.1);
			//logo animation out on click
			TweenMax.staggerTo('.line', 0.5, {
				autoAlpha: 0,
				rotation: "-=90",
				ease: Power4.easeOutIn
			}, 0.15);
			TweenMax.to('#logo', 2, {
				autoAlpha: 0,
				rotation: -180,
				scale: 0
			}, 0.5);
			$('.navbar-toggle').toggleClass('active');
		});


		//logo animation in
		TweenMax.from('#logo', 2, {
			autoAlpha: 0,
			rotation: 360,
			scale: 9.5
		}, 0.5);
		TweenMax.staggerFrom('.line', 1, {
			autoAlpha: 0,
			rotation: "+=90",
			ease: Power4.easeInOut
		}, 0.15);


		var tl = new TimelineLite();

		//Animate page elements in
		
		tl.fromTo('main.main', 0.5, {
			opacity: 1
		}, {
			opacity: 1
		}).fromTo('.page-header h1', 0.5, {
			opacity: 0
		}, {
			opacity: 1
		});

		//home next section button
		$('.control-btn').on('click', function() {
			$.scrollTo($(this).closest('section,footer').next(), {
				axis: 'y',
				duration: 500
			});
			return false;
		});
		//home last section button
		$('.control-btn:last').on('click', function() {
			$.scrollTo($(this).closest('footer').next(), {
				axis: 'y',
				duration: 500
			});
			return false;
		});

		//header next section button
		$('.full-height .control-btn-header').on('click', function() {
			$.scrollTo($(this).closest('div').next(), {
				axis: 'y',
				duration: 500
			});
			return false;
		});

		//animate scroll button
		tl.from('.control-btn-header,.control-btn', 1, {
			left: -100,
			scale:1.5,
			ease: Power4.easeInOut
		}, 0.2)
		.to('.control-btn-header span', 1, {
			opacity: 0,
			top: 100,
			delay: 3,
			ease: Power4.easeInOut
		});

		//home section nav - animated scrolling
		$('a.btn').smoothScroll({
			easing: 'swing',
			speed: 800
		});

		$('#plx-nav a').smoothScroll({
			easing: 'swing',
			speed: 1400,
			//offset: -87
		});

		//Simple parallax
		// Cache the Window object
		if (!isMobile.any()) {
			$window = $(window);
			$('.fill[data-type="background"],div.blue[data-type="background"],div.gray[data-type="background"],div.welcome[data-type="background"]').each(function() {
				var $bgobj = $(this);
				$(window).scroll(function() {
					var yPos = -($window.scrollTop() / $bgobj.data('speed'));
					var coords = '50% ' + yPos + 'px';
					$bgobj.css({
						backgroundPosition: coords
					});
				}); // window scroll Ends

			});
			// Create HTML5 elements for IE
			document.createElement("article");
			document.createElement("section");
		}

		$('body').scrollspy({
			//offset:120
		});

	})(jQuery);
}
