<?php 
/**
 *KM Digital shortcodes carousel
 *@package KM Digital Shorcodes
 *@since 1.0
*/

/**
 * Carousel
 */
 
function km_carousel($params, $content = null){
	global $post;
	extract(shortcode_atts(array(
		'id' => $post->ID,
		'size' => 'full',
	), $params));
		$attachments = get_children( array(
			'post_parent'		=>	$id,
			'post_status'		=>	'inherit',
			'post_type'			=>	'attachment',
			'post_mime_type'	=>	'image',
			'order'			=>	'ASC',
			'orderby'			=>	'menu_order ID',
		) );
		if ( empty( $attachments ) ) return;
		$carousel_open = "\n\n" . '<aside id="gallery-carousel-'. $id .'" class="carousel slide">';
		$carousel_open .= "\n\t";
		$carousel_open .= 	'<div class="carousel-inner">';
				$i = 0;
				foreach ( $attachments as $attachment ) : 
				$carousel_items .= "\n\t\t" . '<figure class="'. ($i == 0 ? 'item active' : 'item') . '">';
				$carousel_items .= "\n\t\t\t" . wp_get_attachment_image( $attachment->ID, $size ); 
					if ( has_excerpt( $attachment->ID ) ) :
					$carousel_items .= "\n\t\t" . '<figcaption class="carousel-caption">';
					$carousel_items .= "\n\t\t\t  <h4>" . get_the_title( $attachment->ID ) . '</h4>';
					$carousel_items .= "\n\t\t\t  <p>" . apply_filters( 'get_the_excerpt', $attachment->post_excerpt ) . '</p>';
					$carousel_items .= "\n\t\t" . '</figcaption>';
					endif;
				$carousel_items .= "\n\t\t" . '</figure>';
				$i++;
				endforeach;
			$carousel_close = "\n\t</div>\n";		
			$carousel_close .= '<a class="carousel-control left" href="#gallery-carousel-'. $id .'" data-slide="prev">&laquo;</a>';
			$carousel_close .= '<a class="carousel-control right" href="#gallery-carousel-'. $id .'" data-slide="next">&raquo;</a>';
			$carousel_close .= "\n</aside>\n\n";

		return $carousel_open . $carousel_items . $carousel_close;		
	
	return force_balance_tags( $result . $carousel_open . $carousel_items . $carousel_close );
}
add_shortcode('carousel', 'km_carousel');
