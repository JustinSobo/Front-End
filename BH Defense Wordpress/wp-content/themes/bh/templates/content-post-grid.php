<?php if( $wp_query->current_post == 0 && !is_paged() ) : ?>
  <?php if ( has_post_thumbnail() ) { ?>
      <article  <?php post_class('archive-post col-sm-6 first-post archive-post-img'); ?>>
        
          <header>
            <?php get_template_part('templates/entry-meta'); ?>
            <a href="<?php the_permalink(); ?>"><h2 class="entry-title"><?php the_title(); ?></h2></a>
          </header>
          <?php the_post_thumbnail('news', array('class' => 'img-responsive'));?>
        
      </article >
    <?php } else {?>
      <article  <?php post_class('archive-post col-sm-6 first-post archive-post-text'); ?>>
       
        <header>
          <?php get_template_part('templates/entry-meta'); ?>
          <span class="label label-primary text-center">
          <?php 
            $category = get_the_category(); 
            echo $category[0]->cat_name;
          ?>
          </span>
          <a href="<?php the_permalink(); ?>"><h2 class="entry-title"><?php the_title(); ?></h2></a>
          <?php the_excerpt(); ?>
           <a href="<?php the_permalink(); ?>" class="btn-primary btn-large">Read More</a>
        </header>

       
      </article >
<?php } ?>
<?php else : ?>
  <?php if ( has_post_thumbnail() ) { ?>
      <article  <?php post_class('archive-post col-sm-3 archive-post-img'); ?>>
        <?php the_post_thumbnail('news', array('class' => 'img-responsive'));?>
          <header>
            <?php get_template_part('templates/entry-meta'); ?>
            <a href="<?php the_permalink(); ?>"><h2 class="entry-title"><?php the_title(); ?></h2></a>
          <?php the_excerpt(); ?>
          </header>
        
      </article >
    <?php } else {?>
      <article  <?php post_class('archive-post col-sm-3 archive-post-text'); ?>>
       
        <header>
          <?php get_template_part('templates/entry-meta'); ?>
          <a href="<?php the_permalink(); ?>"><h2 class="entry-title"><?php the_title(); ?></h2></a>
          <?php the_excerpt(); ?>
        </header>
       
      </article >
<?php } ?>
<?php endif; ?>
