<header id="nav" class="top-nav navbar-static-top">


    <a class="navbar-brand" href="<?php echo home_url(); ?>/">
<!--       <img src="<?php //echo get_template_directory_uri(); ?>/assets/img/himcloud-logo.png" alt="<?php //bloginfo('name'); ?>" />
 -->    
      <img class="logo-header" src="<?php echo get_template_directory_uri(); ?>/assets/img/logo.svg" alt="<?php bloginfo('name'); ?>" />
      <span class="logo-header-text">HIMcloud</span>
    </a>
    <ul class="list-inline nav-cta pull-right">
      <li class="nav-cta-btn"><a href="http://kmdig.com/client/himcloud-html/" class="btn-primary">JOIN NOW</a></li>
      <li class="menu-toggle">
        <span class="toggle-text">Menu</span>
        <button  class="navbar-toggle" type="button" data-toggle="navoverlay">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar top"></span>
          <span class="icon-bar middle"></span>
          <span class="icon-bar bottom"></span>
        </button>
      </li>
    </ul>

</header>
<aside class="sidebar nav-overlay">
  <nav class="navbar-collapse" role="navigation">
      <?php
        if (has_nav_menu('primary_navigation')) :
          wp_nav_menu(array('theme_location' => 'primary_navigation', 'menu_class' => 'nav navbar-nav'));
        endif;
      ?>
  </nav>
</aside>
