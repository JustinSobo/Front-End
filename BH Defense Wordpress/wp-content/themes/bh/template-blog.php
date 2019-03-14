<?php
/*
Template Name: Blog Template
*/
?>
<div class="container">
	<?php 
		$loop = new WP_Query(array('posts_per_page' => -1,'order'=>'dec'));
		$count =0;
	?>

	<div>

	<?php if ( $loop ) : 

		while ( $loop->have_posts() ) : $loop->the_post(); ?>


	  	<?php if ( has_post_thumbnail() ) { ?>
			<div class="archive-post col-sm-4 archive-post-img">
					<header>
						<?php get_template_part('templates/entry-meta'); ?>
						<a href="<?php the_permalink(); ?>">
							<h2 class="entry-title"><?php the_title(); ?></h2>
						</a>
					</header>
					<?php the_post_thumbnail('news', array('class' => 'img-responsive'));?>

			</div>
		<?php } else {?>
			<div class="archive-post col-sm-4 archive-post-text">
				<header>
					<?php get_template_part('templates/entry-meta'); ?>
					<h2 class="entry-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
					<?php the_excerpt(); ?>
				</header>
			</div>
		<?php } ?>
		<?php endwhile; else: ?>
		<div class="alert alert-warning">
			<?php _e('Sorry, no results were found.', 'roots'); ?>
		  </div>
		  <?php get_search_form(); ?>
	<?php endif; ?>

	<div class="clearfix"></div>	
<?php if ($wp_query->max_num_pages > 1) : ?>
  <nav class="post-nav">
    <ul class="pager">
      <li class="previous"><?php next_posts_link(__('&larr; Older posts', 'roots')); ?></li>
      <li class="next"><?php previous_posts_link(__('Newer posts &rarr;', 'roots')); ?></li>
    </ul>
  </nav>
<?php endif; ?>
</div>
