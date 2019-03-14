


$(document).ready(function(){
    /* loader */
   var o = $('#page-preloader');
    if (o.length > 0) {
        $(window).on('load', function() {
            $('#page-preloader').removeClass('visible');
        });
    }
    // go to top
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('#scroll').fadeIn();
        } else {
            $('#scroll').fadeOut();
        }
    });
    $('#scroll').click(function () {
        $("html, body").animate({scrollTop: 0}, 600);
        return false;
    });

    // search
    $(".first").click(function(){
        $(".sec").addClass("newadd");
    });
    
      $(".sec").click(function(){
        $(".first").addClass("newrem");
        $(this).removeClass("newadd");
    });


    // list-grid
    $("#gridProduct").click(function(event) {
        $('.productList').hide();
        $('.productGrid').show();
        $("#gridProduct").addClass("active");
        $("#listProduct").removeClass("active");
    });
    $("#listProduct").click(function(event) {
       $('.productGrid').hide();
       $('.productList').show() ;
       $("#listProduct").addClass("active");
       $("#gridProduct").removeClass("active");
    });

     /* sticky header */
  if ($(window).width() >= 801) {
      $(window).scroll(function () {
        if ($(this).scrollTop() > 120) {
            $('.header-top').addClass('fixed fadeInDown animated container');          

        } else {
            $('.header-top').removeClass('fixed fadeInDown animated container');
        }
      });
};


if ($(window).width() <= 800) {
    $('.page-sidebar').appendTo('.page-content');
    $('#facetedSearch').appendTo('.xs-filter');

  }


});

$(document).ready(function(){
       if ($(window).width() >= 768){
    var count_block = $('.moremenu').length;
    var number_blocks = 8;
    //console.log(count_block);
    if(count_block < number_blocks){
        return false; 
    }
    else {
        $('.moremenu').each(function(i,n){
            $('moremenu').addClass(i);
            if(i == number_blocks) {
            $('.navPages-list').append('<li class="view_more my-menu navPages-item"><a class=""><i class="fa fa-plus thumb_img"></i> More Categories</a></li>');
            }
            if(i> number_blocks) {
            $(this).addClass('wr_hide_menu').hide();
            }
        });
        $('.view_more').click(function() {
            $(this).toggleClass('active');
            $('.wr_hide_menu').slideToggle();
        });
    }
}
});
