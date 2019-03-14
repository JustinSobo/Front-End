<article <?php post_class(); ?>>
  <header>
    <h2 class="entry-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
  </header>
	<time class="published" datetime="<?php echo get_the_time('c'); ?>">
		<?php echo get_the_date(); ?>
	</time>
</article>
