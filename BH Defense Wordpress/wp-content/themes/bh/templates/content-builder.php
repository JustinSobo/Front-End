<?php while(has_sub_field("km_builder")): ?>
	
<?php if(get_row_layout() == "cta"): ?>
	<section class="module-wrap b-cta">
		<div class="cover <?php 
			if ( get_sub_field( 'cta_full_height' )):
				echo "full-height";
			endif; ?>
			<?php the_sub_field('cta_class');?>"  
			data-type="background" data-speed="4"  style="
			<?php 
			if ( get_field( 'cta_bg_fx' ) == "true" ):
				echo " background-attachment: fixed; " ;
			else: 
				echo " background-attachment: scroll; " ;

			endif; ?>
			background-image:url(<?php the_sub_field('cta_bg');?>);">
		 	<div class="container <?php 
			if ( get_sub_field( 'cta_full_height' )):
				echo "align-vertical";
			endif; ?>" style="padding-top:<?php the_field('cta_vertical_padding'); ?>px;padding-bottom:<?php the_field('cta_vertical_padding'); ?>px;">
		 		<div class="row">
			 		<div class="col-md-12">
				 		<div class="col-md-9">
				 			<p class="lead"><?php the_sub_field('cta_text');?></p>
				 		</div>
				 		<div class="col-md-3">
				 			<a href="<?php the_sub_field('cta_button_link');?>" class="btn btn-primary btn-red btn-lg"><?php the_sub_field('cta_button');?></a>	
				 		</div>
			 		</div>
		 		</div>
		 	</div>
		 </div>	
	 	<?php if ( get_sub_field( 'cta_full_height' )):?>
			<a href="#" class="control-btn"><i class="icon-arrow-down"></i></a>
		<?php endif;?>
	</section>
	<?php elseif(get_row_layout() == "full_width"): ?>
	<section class="module-wrap b-full-width">
		<div class="cover <?php 
			if ( get_sub_field( 'full_width_full_height' )):
				echo "full-height";
			endif; ?> <?php the_sub_field('full_width_class');?>"  
			data-type="background" data-speed="4"  
			style="
			<?php 
			if ( get_field( 'full_width_bg_fx' ) == 1):
				echo " background-attachment: fixed; " ;
			else: 
				echo " background-attachment: scroll; " ;

			endif; ?> 
			background-image:url(<?php the_sub_field('full_width_bg');?>);">
		 	<div class="container <?php 
			if ( get_sub_field( 'full_width_full_height' )):
				echo "align-vertical";
			endif; ?>" style="padding-top:<?php the_sub_field('full_width_vertical_padding'); ?>px;padding-bottom:<?php the_sub_field('full_width_vertical_padding'); ?>px;">
		 		<div class="row">	
			 		<div class="col-md-12">
			 			<?php the_sub_field('col-md-12');?>	
			 		</div>
		 		</div>
		 	</div>
		</div>
	 	<?php if ( get_sub_field( 'full_width_full_height' )):?>
			<a href="#" class="control-btn"><i class="icon-arrow-down"></i></a>
		<?php endif;?>
	</section>
	<?php elseif(get_row_layout() == "four_column"): ?>
	<section class="module-wrap b-three-column">
		<div class=" cover <?php 
			if ( get_sub_field( 'four_column_full_height' )):
				echo "full-height";
			endif; ?> <?php the_sub_field('four_column_class');?>"  
			data-type="background" data-speed="4"  
			style="
			<?php 
			if ( get_field( 'four_column_bg_fx' ) == "true" ):
				echo " background-attachment: fixed; " ;
			else: 
				echo " background-attachment: scroll; " ;

			endif; ?>
			background-image:url(<?php the_sub_field('four_column_bg');?>);">	
			<div class="container <?php 
			if ( get_sub_field( 'four_column_full_height' )):
				echo "align-vertical";
			endif; ?>" style="padding-top:<?php the_sub_field('four_column_vertical_padding'); ?>px;padding-bottom:<?php the_sub_field('four_column_vertical_padding'); ?>px;">
				<div class="row">
				 	<div class="col-md-3">
				 		<?php the_sub_field('first_col-md-3');
				 		?>
				 	</div>
				 	<div class="col-md-3">
				 		<?php the_sub_field('second_col-md-3');
				 		?>
				 	</div>
				 	<div class="col-md-3">
				 		<?php the_sub_field('third_col-md-3');?>
				 	</div>
				 	<div class="col-md-3">
				 		<?php the_sub_field('fourth_col-md-3');?>
				 	</div>
				 </div>	
			</div>
		</div>
		<?php if ( get_sub_field( 'four_column_full_height' )):?>
			<a href="#" class="control-btn"><i class="icon-arrow-down"></i></a>
		<?php endif;?>
	</section>
	<?php elseif(get_row_layout() == "three_column"): ?>
	<section class="module-wrap b-three-column">
		<div class=" cover <?php 
			if ( get_sub_field( 'three_column_full_height' )):
				echo "full-height";
			endif; ?> <?php the_sub_field('three_column_class');?>"  
			data-type="background" data-speed="4"  
			style="
			<?php 
			if ( get_field( 'three_column_bg_fx' ) == "true" ):
				echo " background-attachment: fixed; " ;
			else: 
				echo " background-attachment: scroll; " ;

			endif; ?>
			background-image:url(<?php the_sub_field('three_column_bg');?>);">	
			<div class="container <?php 
			if ( get_sub_field( 'three_column_full_height' )):
				echo "align-vertical";
			endif; ?> " style="padding-top:<?php the_sub_field('three_column_vertical_padding'); ?>px;padding-bottom:<?php the_sub_field('three_column_vertical_padding'); ?>px;">
				<div class="row">
				 	<div class="col-md-4">
				 		<?php the_sub_field('left_col-md-4');
				 		?>
				 	</div>
				 	<div class="col-md-4">
				 		<?php the_sub_field('middle_col-md-4');
				 		?>
				 	</div>
				 	<div class="col-md-4">
				 		<?php the_sub_field('right_col-md-4');?>
				 	</div>
				 </div>	
			</div>
		</div>
	 	<?php if ( get_sub_field( 'three_column_full_height' )):?>
			<a href="#" class="control-btn"><i class="icon-arrow-down"></i></a>
		<?php endif;?>
	</section>
	<?php elseif(get_row_layout() == "two_column"): ?>
	<section class="module-wrap b-two-column">
		<div class="<?php 
			if ( get_sub_field( 'two_column_full_height' )):
				echo "full-height";
			endif; ?> <?php the_sub_field('two_column_class');?>"  data-type="background" data-speed="4"  style="background-size: cover;
background-attachment: fixed; background-image:url(<?php the_sub_field('two_column_bg');?>);">
			<div class="container <?php 
			if ( get_sub_field( 'two_column_full_height' )):
				echo "align-vertical";
			endif; ?>" style="padding-top:<?php the_sub_field('two_column_vertical_padding'); ?>px;padding-bottom:<?php the_sub_field('two_column_vertical_padding'); ?>px;">
				<div class="row">
				 	<div class="col-md-6">
				 		<?php the_sub_field('left_col-md-6');?>
				 	</div>
				 	<div class="col-md-6">
				 		<?php the_sub_field('right_col-md-6');?>
				 	</div>			 	
			 	</div>
			 </div>	
		</div>
	 	<?php if ( get_sub_field( 'two_column_full_height' )):?>
			<a href="#" class="control-btn"><i class="icon-arrow-down"></i></a>
		<?php endif;?>	
	</section>
	<?php elseif(get_row_layout() == "two_column_graphic"): ?>
	<section class="module-wrap b-two-column">
		<div class="<?php 
			if ( get_sub_field( 'two_column_full_height' )):
				echo "full-height";
			endif; ?> <?php the_sub_field('two_column_class');?>"  data-type="background" data-speed="4"  style="background-size: cover;
background-attachment: fixed; background-image:url(<?php the_sub_field('two_column_bg');?>);">
			<div class="container <?php 
			if ( get_sub_field( 'two_column_full_height' )):
				echo "align-vertical";
			endif; ?>" style="padding-top:<?php the_sub_field('two_column_vertical_padding'); ?>px;padding-bottom:<?php the_sub_field('two_column_vertical_padding'); ?>px;">
				<div class="row">
				 	<div class="col-md-6">
				 		<?php the_sub_field('left_col-md-6');?>
				 		<?php the_sub_field('left_col-md-6_anim');?>
				 	</div>
				 	<div class="col-md-6">
				 		<?php the_sub_field('right_col-md-6');?>
				 		<?php the_sub_field('right_col-md-6_anim');?>
				 	</div>			 	
			 	</div>
			 </div>	
		</div>
	 	<?php if ( get_sub_field( 'two_column_full_height' )):?>
			<a href="#" class="control-btn"><i class="icon-arrow-down"></i></a>
		<?php endif;?>	
	</section>
	<?php elseif(get_row_layout() == "jumbotron"): ?>
	<section class="module-wrap b-jumbotron">
		<div class="jumbotron <?php 
			if ( get_sub_field( 'jumbotron_full_height' )):
				echo "full-height";
			endif; ?> <?php the_sub_field('jumbotron_class');?>"  data-type="background" data-speed="4"  style="background-size: cover;
background-attachment: fixed; background-image:url(<?php the_sub_field('jumbotron_bg');?>);">
			<div class="container <?php 
			if ( get_sub_field( 'jumbotron_full_height' )):
				echo "align-vertical";
			endif; ?>" style="padding-top:<?php the_sub_field('jumbotron_vertical_padding'); ?>px;padding-bottom:<?php the_sub_field('jumbotron_vertical_padding'); ?>px;">
			 	<h1><?php the_sub_field('jumbotron_title');?></h1>
				<p><?php the_sub_field('jumbotron_body');?></p>

				<?php if( have_rows('jumbotron_btn') ): ?>
				 
				    <div class="btn-group btn-group-lg">
				 
				    <?php while( have_rows('jumbotron_btn') ): the_row(); ?>
				 
				        <a class="btn btn-primary btn-lg" href="<?php the_sub_field('jumbotron_btn_link');?>"><?php the_sub_field('jumbotron_btn_text');?></a>
				        
				    <?php endwhile; ?>
				 
				    </div>
				 
				<?php endif; ?>
		 	</div>
		</div>
	 	<?php if ( get_sub_field( 'jumbotron_full_height' )):?>
			<a href="#" class="control-btn"><i class="icon-arrow-down"></i></a>
		<?php endif;?>
	</section>
	<?php elseif(get_row_layout() == "well"): ?>
	<section class="module-wrap b-well <?php 
			if ( get_sub_field( 'well_full_height' )):
				echo "full-height";
			endif; ?>">
		<div class="container <?php if ( get_sub_field( 'well_full_height' )):
				echo "align-vertical";
			endif; ?>" style="padding-top:<?php the_sub_field('well_vertical_padding'); ?>px;">
			<div class="well well-<?php the_sub_field('well_size');?> <?php the_sub_field('well_class');?>"  data-type="background" data-speed="4"  style="background-size: cover;
background-attachment: fixed; background-image:url(<?php the_sub_field('well_bg');?>);">
				<?php the_sub_field('well_body');?>
			</div>
		</div>
		<?php if ( get_sub_field( 'jumbotron_full_height' )):?>
			<a href="#" class="control-btn"><i class="icon-arrow-down"></i></a>
		<?php endif;?>
	</section>
	<?php endif; ?>		

<?php endwhile; //end bulder?>
