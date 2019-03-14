<header class="banner navbar navbar-inverse navbar-fixed-top" role="banner">
  <div class="container">
    <div class="row no-gutters">
      <div class="navbar-header col-sm-3">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="<?php echo esc_url(home_url('/')); ?>"><img class="logo" src="<?php echo get_template_directory_uri(); ?>/assets/img/logo.png" alt="<?php bloginfo('name'); ?>"></a>
      </div>
      <div class="col-sm-9">
        <nav class="collapse navbar-collapse" role="navigation">
        <?php

          if (has_nav_menu ('top_navigation')):
             wp_nav_menu (array ('theme_location' => 'top_navigation', 'menu_class' => 'nav nav-top nav'));
           endif;?>
       
         <?php if (has_nav_menu('primary_navigation')) :
            wp_nav_menu(array('theme_location' => 'primary_navigation', 'menu_class' => 'nav nav-bottom nav-justified'));
          endif;

        ?>
        
      </nav>
      </div>
    </div>
  </div>
</header>
