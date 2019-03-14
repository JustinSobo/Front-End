// /// * DOM-based Routing //* Based on http://goo.gl/EUTi53 by Paul Irish
//  *
//  * Only fires on body classes that match. If a body class contains a dash,
//  * replace the dash with an underscore when adding it to the object below.
//  *
//  * .noConflict()
//  * The routing is enclosed within an anonymous function so that you can
//  * always reference jQuery with $, even when in .noConflict() mode.
//  *
//  * Google CDN, Latest jQuery
//  * To use the default WordPress version of jQuery, go to lib/config.php and
//  * remove or comment out: add_theme_support('jquery-cdn');
//  * ======================================================================== */

(function($) {

// Use this variable to set up the common and page specific functions. If you
// rename this variable, you will also need to rename the namespace below.


var Sprout = {
  // All pages
  common: {
    init: function() {
      routeCommon();
    }
  },
  // Home page
  home: {
    init: function() {
      //console.log('home');
      routeHome();
      getPackin();
    }
  },
  // About us page, note the change from about-us to about_us.
  about_us: {
    init: function() {
    
    }
  },
  blog: {
    init: function() {
      getPackin();
    }
  }
};

// The routing fires all common scripts, followed by the page specific scripts.
// Add additional events for more control over timing e.g. a finalize event
var UTIL = {
  fire: function(func, funcname, args) {
    var namespace = Sprout;
    funcname = (funcname === undefined) ? 'init' : funcname;
    if (func !== '' && namespace[func] && typeof namespace[func][funcname] === 'function') {
      namespace[func][funcname](args);
    }
  },
  loadEvents: function() {
    UTIL.fire('common');

    $.each(document.body.className.replace(/-/g, '_').split(/\s+/),function(i,classnm) {
      UTIL.fire(classnm);
    });
  }
};

$(document).ready(UTIL.loadEvents);

})(jQuery); // Fully reference jQuery after this point.


    //slide2
    if(jQuery('#slide-2').css('display') === 'block'){
      TweenMax.staggerTo("#home-slide2 #coders g", 0.25, {
        autoAlpha:0,
        ease: Power2.easeInOut
      }, 0.1);

      TweenMax.staggerFrom("[id^=chart_]", 1, {
        autoAlpha:0, marginBottom: -20,
        ease: Power2.easeInOut
      }, 0.5);
    }
