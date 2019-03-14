// startupKit.uiKitHeader = startupKit.uiKitHeader || {};
//
// startupKit.uiKitHeader._inFixedMode = function(headerClass) {
//     var navCollapse = $(headerClass + ' .navbar-collapse').first().clone(true);
//     navCollapse.attr('id', headerClass.substr(1));
//     $('body').append(navCollapse);
//
//     var fixedNavbar = $('.navbar-fixed-top');
//         fixedNavbarHeader = fixedNavbar.closest('header');
//         fixedNavbarHeaderClone = fixedNavbarHeader.clone(true);
//
//     if(fixedNavbarHeader.hasClass('fake-header')) {
//         var fakeHeader = $('<div class="fake-wrapper-header" style="width: 100%; height: ' + fixedNavbarHeader.outerHeight() + 'px;" />');
//     }
//     $('body').prepend(fakeHeader);
//     $('body').prepend(fixedNavbarHeaderClone);
//     fixedNavbarHeader.detach();
//
//     $(headerClass + ' .navbar-toggle').on('click', function() {
//         var $this = $(this);
//         if($('html').hasClass('nav-visible')) {
//             startupKit.hideCollapseMenu();
//         } else {
//             $('.navbar-collapse#' + headerClass.substr(1)).removeClass('collapse');
//             if($('#header-dockbar').length) {
//                 $('.navbar-collapse#' + headerClass.substr(1)).css({
//                     top: $('#header-dockbar').height()
//                 });
//             }
//             setTimeout(function() {
//                 $('html').addClass('nav-visible');
//             }, 1)
//             setTimeout(function() {
//                 $('body > .navbar-collapse').css({
//                     'z-index': 101
//                 });
//             }, 400)
//         }
//     });
//
//     if ($(headerClass + ' .navbar').hasClass('navbar-fixed-top')) {
//         var s1 = $(headerClass + '-sub'),
//             s1StopScroll = s1.outerHeight() - 70,
//             antiflickerStopScroll = 70;
//
//         if($(headerClass).outerHeight()>0){
//             var antiflickerColor = $(headerClass).css('background-color');
//         }else if($(headerClass+'-sub').length > 0){
//             var antiflickerColor = $(headerClass+'-sub').css('background-color');
//         }else{
//             var antiflickerColor='#fff';
//         }
//
//         var antiflicker = $('<div class="' + headerClass.slice(1) + '-startup-antiflicker header-antiflicker" style="opacity: 0.0001; position: fixed; z-index: 2; left: 0; top: 0; width: 100%; height: 70px; background-color: '+antiflickerColor+';" />');
//         $('body').append(antiflicker);
//         var s1FadedEls = $('.background, .caption, .controls > *', s1),
//             header = $(headerClass);
//
//         s1FadedEls.each(function() {
//             $(this).data('origOpacity', $(this).css('opacity'));
//         });
//
//         var headerAniStartPos = s1.outerHeight() - 120, headerAniStopPos = s1StopScroll;
//
//         $(window).scroll(function() {
//             var opacity = (s1StopScroll - $(window).scrollTop()) / s1StopScroll;
//             opacity = Math.max(0, opacity);
//
//             if ($(window).scrollTop() > s1StopScroll - antiflickerStopScroll) {
//                 var opacityAntiflicker = (s1StopScroll - $(window).scrollTop()) / antiflickerStopScroll;
//                 opacityAntiflicker = Math.max(0, opacityAntiflicker);
//             } else {
//                 opacityAntiflicker = 1
//             }
//             // 0..1
//
//             s1FadedEls.each(function() {
//                 $(this).css('opacity', $(this).data('origOpacity') * opacity);
//             });
//
//             antiflicker.css({
//                 'background-color': $('.pt-page-current', s1).css('background-color'),
//                 'opacity': 1.0001 - opacityAntiflicker
//             });
//
//             var headerZoom = -(headerAniStartPos - $(window).scrollTop()) / (headerAniStopPos - headerAniStartPos);
//             headerZoom = 1 - Math.min(1, Math.max(0, headerZoom));
//
//             $(window).resize(function(){
//                _navbarResize();
//             });
//             var _navbarResize = function(){
//                 if($(window).width()<767){
//                     $('.navbar', header).css({
//                         'top' : -6 + ((20 + 6) * headerZoom)
//                     });
//                 } else if($(window).width()<480){
//                     $('.navbar', header).css({
//                         'top' : -6 + ((20 + 6) * headerZoom)
//                     });
//                 } else{
//                     $('.navbar', header).css({
//                         'top' : -6 + ((45 + 6) * headerZoom)
//                     });
//                 }
//             };
//
//             _navbarResize();
//
//             $('.navbar .brand', header).css({
//                 'font-size' : 18 + ((25 - 18) * headerZoom),
//                 'padding-top' : 30 + ((23 - 30) * headerZoom)
//             });
//             $('.navbar .brand img', header).css({
//                 'width' : 'auto',
//                 'height' : 25 + ((50 - 25) * headerZoom),
//                 'margin-top' : -1 + ((-10 + 1) * headerZoom)
//             });
//             $('.navbar .btn-navbar', header).css({
//                 'margin-top' : 30 + ((28 - 30) * headerZoom)
//             });
//
//             if ($(window).width() > 979) {
//                 $(headerClass + '.navbar .nav > li > a', header).css({
//                     'font-size' : 12 + ((14 - 12) * headerZoom)
//                 });
//             } else {
//                 $(headerClass + '.navbar .nav > li > a', header).css({
//                     'font-size' : ''
//                 });
//             }
//
//         });
//     };
// };
//
//
//
// /* Header 19*/
// startupKit.uiKitHeader.header19 = function() {
//     startupKit.uiKitHeader._inFixedMode('.navbar');
// };
