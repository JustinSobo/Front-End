<?php get_template_part('templates/head'); ?>
<body <?php body_class(); ?>>
<?php get_template_part('templates/color'); ?>
  <!--[if lt IE 8]>
  <div class="ie-8-warning">
    <h1> Sorry, this site was made for modern browsers.</h1>
    <div class="alert alert-warning">
      <?php _e(' You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.', 'roots'); ?>
    </div>
  </div>

  <![endif]-->
<div class="wrap" role="document">
    <?php
    do_action('get_header');
    // Use Bootstrap's navbar if enabled in config.php
    // if (current_theme_supports('bootstrap-top-navbar')) {
    //   get_template_part('templates/header-top-navbar');
    // } else {
    //   get_template_part('templates/header');
    // }
    //Use Sidenavbar if enabled in config.php
    if (current_theme_supports('side-nav')) {
      get_template_part('templates/header-sidenav');
    } else {
      get_template_part('templates/header');
    }
  ?>

    <?php get_template_part('templates/page', 'header-big'); ?>
    <?php include roots_template_path(); ?>

  <?php get_template_part('templates/footer'); ?>
</div>

</body>
</html>
