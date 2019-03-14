<div class="welcome">
<?php if( have_rows('welcome_items') ): ?>

  <?php $i=1; //reset counter ?>
  <?php while( have_rows('welcome_items') ): the_row();

    // welcome vars

    $w_image = wp_get_attachment_image_src( get_sub_field('welcome_image'), 'full-screen' );
    $w_image_foreground = get_sub_field('welcome_image_foreground');
    $w_subtitle = get_sub_field('welcome_sub_title');
    $w_title = get_sub_field('welcome_title');
    $w_body = get_sub_field('welcome_body');
    $w_btnlink = get_sub_field('welcome_button_link');
    $w_btntitle = get_sub_field('welcome_button_title');
    $w_identifier = get_sub_field('welcome_identifier');
    $w_color = get_sub_field('welcome_overlay_color');
    $w_textalign = get_sub_field('welcome_text_align');

  ?>
  <section id="<?php echo $w_identifier; ?>" class="welcome-item section-colored <?php echo $w_color; ?>">
    <div class="overlay overlay-<?php echo $w_color; ?>"></div>
    <div class="fill" style="background-color:; background-image:url(<?php echo $w_image[0]; ?>);"></div>
    <div class="container">
      <div class="row  align-vertical">
        <div class="<?php
          if(($w_textalign) == "Left")
          {
             echo 'col-md-7  text-right';
          }
          if(($w_textalign) == "Center")
          {
             echo 'col-md-10 col-md-offset-1 text-center';
          }
          if(($w_textalign) == "Right")
          {
             echo 'col-md-7 col-md-push-7';
          }?>">
          <h3 class="welcome-sub-title"><?php echo $w_subtitle; ?></h2>
          <h1 class="welcome-title"><?php echo $w_title; ?></h2>
          <div class="welcome-body">
            <?php echo $w_body; ?>
          </div>
          <div class="btn-group">
            <a href="<?php echo $w_btnlink; ?>" class="btn btn-primary btn-large btn-lg"> <?php echo $w_btntitle; ?></a>  
          </div>
        </div>
        <div class="<?php
          if(($w_textalign) == "Left")
          {
             echo 'col-md-5 icon-left';
          }
          if(($w_textalign) == "Center")
          {
             echo 'icon-center';
          }
          if(($w_textalign) == "Right")
          {
             echo 'col-md-5 col-md-pull-5 icon-right';
          }?>">
          <?php echo $w_image_foreground; ?>
        </div>
      </div><!-- /.row -->
    </div><!-- /.container -->
     <a class="control-btn icon-arrow-down" href="#"></a>
  </section><!-- /.section-colored -->
  <?php endwhile; ?>
  <?php endif; ?>
