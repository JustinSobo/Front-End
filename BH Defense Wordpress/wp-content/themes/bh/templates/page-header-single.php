<div class="page-header jumbotron">
	<div class="single-cat">
		<span class="label label-primary text-center">
			<?php 
			$category = get_the_category(); 
			echo $category[0]->cat_name;
			?>
		</span>
	</div>
	  <h1>
	    <?php echo roots_title(); ?>
	  </h1>
</div>
