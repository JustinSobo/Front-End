<?php if( have_rows('home_slider') ): ?>

<div id="carousel" class="carousel slide">
    <?php $i=1; //counter for slide #id's ?>
  <!-- Indicators -->
    <ol class="carousel-indicators">
          <?php while( have_rows('home_slider') ): the_row(); ?>
      <li data-target="#carousel" data-slide-to="<?php echo $i++ - 1; ?>" class="<?php 
    //$c++;
    $class = '';//add empty class if not on first post
    if( $i == 2 ) $class .= ' active';//add .active class if we are
    echo $class;?>"></li>
        <?php endwhile; ?>
    </ol>
           
<!-- Wrapper for slides -->
    <div class="carousel-inner">
      <?php $i=1; //reset counter ?>
    <?php while( have_rows('home_slider') ): the_row(); 
      // vars
      $image = wp_get_attachment_image_src( get_sub_field('home_slider_image'), 'full-screen' );
      //$anim = wp_get_attachment_image_src( get_sub_field('home_slider_anim'));
      $anim = get_sub_field('home_slider_anim');
      $title = get_sub_field('home_slider_title');
      $subtitle = get_sub_field('home_slider_sub_title');
      $btnlink = get_sub_field('home_slider_btn_link');
      $btntitle = get_sub_field('home_slider_btn_title');
    ?>
    <div id="slide-<?php echo $i++; ?>" class="item <?php 
    //$c++;
    $class = '';//add empty class if not on first post
    if( $i == 2 ) $class .= ' active';//add .active class if we are
    echo $class;?>">
      <div class="fill" style="background-color:#0481ae; background-image:url(<?php echo $image[0] ; ?>);"></div>
      <div class="container">
       <div class="carousel-caption">
          <?php if( !empty($subtitle) ):  ?>
            <h3><?php echo $subtitle; ?></h3>
          <?php endif; ?>
          <?php if( !empty($title) ):  ?>
            <h1><?php echo $title; ?></h1>
          <?php endif; ?>       
          <?php if( $btnlink ): ?>
            <div class="cta-wrap">
              <a class="btn btn-primary btn-large btn-lg" href="<?php echo $btnlink; ?>"><?php echo $btntitle; ?> </a>
            </div>
          <?php endif; ?>
          <div class="slide-animation">
            <?php echo $anim; ?>
          </div>
          
        </div>
      </div> 
      
    </div>

  <?php endwhile; ?>

  </div>
 
<?php endif; ?>

<?php wp_reset_query(); ?>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel" data-slide="prev">
    <i class="icon-arrow-left"></i>
  </a>
  <a class="right carousel-control" href="#carousel" data-slide="next">
    <i class="icon-arrow-right"></i>
  </a>
</div><!-- /.carousel -->



<div class="main">
  <div class="container">

    <div class="col-sm-5 callout">
      <div class="well hover-fx">
        <h2 class="callout-title"><?php the_field('home_callout_title'); ?></h2> 
        <p><?php the_field('home_callout_paragraph'); ?></p>
        <a href="<?php the_field('home_callout_button_link'); ?>" class="btn-primary">Learn More</a>
      </div>
    </div>

    <div class="col-sm-7 main-welcome">
      <h2><?php the_field('home_main_title'); ?></h2>
      <div class="main-welcome-body"><?php the_field('home_main_body'); ?></div>
      <a class="main-welcome-link" href="<?php the_field('home_main_link'); ?>"><?php the_field('home_main_link_text'); ?></a>
    </div>
  </div>

  <div class="services-areas">
    <div class="container">
    <h2>See how BH Defense mitigates <br>risks in specific industries:   </h2>
      <ul class="list-unstyled list-inline">
        <li><h3><a href="/customers/it-communications/"><font color="ffffff">IT & Communications</font></a></h3></li>
        <li><h3><a href="/customers/power-electricoilgas/"><font color="ffffff">Power (Electric/Oil/Gas)</font></a></h3></li>
        <li><h3><a href="/customers/water-supply/"><font color="ffffff">Water Supply</font></a></h3></li>
        <li><h3><a href="/customers/government-services/"><font color="ffffff">Government Services</font></a></h3></li>
        <li><h3><a href="/customers/healthcare/"><font color="ffffff">Healthcare</font></a></h3></li>
        <li><h3><a href="/customers/transportation/"><font color="ffffff">Transportation</font></a></h3></li>
        <li><h3><a href="/customers/financebanking/"><font color="ffffff">Finance/Banking</font></a></h3></li>        
      </ul>
    </div>
  </div>


    <div class="home-partners col-sm-4 text-right">
      <h2>Technology Partners</h2>
      <ul class="list-unstyled pull-right">
        <li><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/nflabs.png" alt="NF Labs" class="partner img-responsive"></li>
        <li><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/bosch.png" alt="Bosch" class="partner img-responsive"></li>
        <li><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/airpatrol.png" alt="Air Patrol" class="partner img-responsive"></li>
        <li><img src="https://bhdefense.com/media/garmin2.png" alt="Garmin" class="partner img-responsive"></li>
      </ul>
      
      
      
    </div>

    <div class="blog-home col-sm-8">

      <div class="title-fx">
        <span class="title-fx-back">Resources & News</span>
        <h3 class="title-fx-front blog-title text-left">Resources & News</h3>
      </div>
      
      <?php 
          // Display blog posts on any page
          $temp = $wp_query; $wp_query= null;
          $wp_query = new WP_Query(); $wp_query->query('showposts=3' . '&paged='.$paged);
          while  ($wp_query->have_posts()) : $wp_query->the_post(); 
            get_template_part('templates/content', 'home-news'); 
          endwhile; ?>
        <div class="view-blog post">
            <a href="<?php echo home_url(); ?>/news" class="btn-primary btn-huge btn-view-blog">View All</a>
        </div>
    </div><!-- /.blog -->

    <div class="clearfix"></div>
     

</div><!-- /.main -->

<?php if (!have_posts()) : ?>
  <div class="alert alert-warning">
    <?php _e('Sorry, no results were found.', 'roots'); ?>
  </div>
  <?php get_search_form(); ?>
<?php endif; ?>
