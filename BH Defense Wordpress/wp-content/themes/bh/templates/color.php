<style type="text/css" media="screen">
<?php  if ( get_field( 'page_header_color' ) == "other"  ): ?>
  body .side-nav .navbar-brand{background:<?php the_field( 'page_header_color_other' ); ?>;}
  body h1,body h2,body h4,body .icon-arrow-down,body a,.jumbotron h1{color:<?php the_field( 'page_header_color_other' ); ?>;}
  body .btn,.label-primary{background-color:<?php the_field( 'page_header_color_other' ); ?>;color:#fff;border-color:<?php the_field( 'page_header_color_other' ); ?>}
  body .nav-overlay .navbar-nav>li.active a{color:<?php the_field( 'page_header_color_other' ); ?>!important;}
  body .nav-overlay .navbar-nav>li a:hover{color:<?php the_field( 'page_header_color_other' ); ?>!important;}
  body #nprogress .bar{background:<?php the_field( 'page_header_color_other' ); ?>;}
  body #nprogress .peg{box-shadow:0 0 10px <?php the_field( 'page_header_color_other' ); ?>,0 0 5px <?php the_field( 'page_header_color_other' ); ?>;}
  body #nprogress .spinner{background:<?php the_field( 'page_header_color_other' ); ?>;}body #nprogress .spinner-icon{border-top-color:#fff;border-left-color:#fff;}
  div.page-header.jumbotron h1 {color: #333;}
<?php endif;?>
</style>
