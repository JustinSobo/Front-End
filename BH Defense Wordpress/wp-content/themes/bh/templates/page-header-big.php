<?php if ( !is_front_page() ) : ?>

<?php if ( get_field( 'page_title_type' ) == "hide" ):
		return null;
?>

<?php else:
		if ( has_post_thumbnail( $post->ID ) ):
			$image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full-screen' );
		$image = $image[0];
	else :
		$image = get_bloginfo( 'stylesheet_directory' ) . '/assets/img/bg-default.jpg';
	endif; ?>
	<div class="page-header jumbotron

	<?php //page header styles

	if ( get_field( 'page_title_type' ) == "centered" ):
		echo "text-center " ;
	endif;

	if ( get_field( 'page_title_type' ) == "large" ):
		echo "large " ;
	endif;

	if ( get_field( 'page_header_color' ) == "none" ):
		echo " none" ;
	endif;
	if ( get_field( 'page_header_color' ) == "green" ):
		echo " green" ;
	endif;
	if ( get_field( 'page_header_color' ) == "gray" ):
		echo " gray" ;
	endif;
	if ( get_field( 'page_header_height' ) == "full" ):
		echo " full-height " ;
	endif;
	?>"
	style="
	background-color:<?php 	if ( get_field( 'page_header_color' ) == "other" ):
		the_field( 'page_header_color_other' ); 
	endif;?>;
	height: <?php if ( the_field( 'page_header_height_custom' ) ): 
				the_field( 'page_header_height_custom' );?>px;<?php endif;?>">
		<div class="container align-vertical">
		  <h1 class="pull-right"><?php echo roots_title(); ?></h1>
		  <?php if ( get_field( 'page_sub_title' ) ):?>
		  <h3>
		  	<?php the_field( 'page_sub_title' ); ?>
		  </h3>
		<?php endif; ?>
		</div>
		<div data-type="background" data-speed="4"  class="fill" style="background-image: url('<?php echo $image; ?>');"></div>
		<?php if ( get_field( 'page_header_height' ) == "full" ):?>
			<a href="#" class="control-btn-header"><i class="icon-arrow-down"></i><span>Scroll Down</span></a>
		<?php endif;?>
	</div><!-- /.page-header -->

<?php endif;?>
<?php endif; ?>
