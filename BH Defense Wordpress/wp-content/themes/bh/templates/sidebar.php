<?php

if ( is_page( 'about' ) || '15' ==  $post->post_parent ) {    
    dynamic_sidebar('sidebar-about'); 

} elseif ( is_page( 'solutions' ) || '23' == $post->post_parent ) {	
   dynamic_sidebar('sidebar-solutions');

} elseif ( is_page( 'the-stakes' ) || '39' ==  $post->post_parent ) { 
    dynamic_sidebar('sidebar-thestakes');

} elseif ( is_page( 'customers' ) || '47' ==  $post->post_parent ) { 
    dynamic_sidebar('sidebar-customers');

} elseif ( is_page( 'partners' ) || '69' ==  $post->post_parent ) { 
    dynamic_sidebar('sidebar-partners');

} else { 
    dynamic_sidebar('sidebar-primary');
}	

?>
