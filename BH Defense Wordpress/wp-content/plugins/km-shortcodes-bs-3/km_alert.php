<?php 
/**
 *KM Digital shortcodes grid
 *@package KM Digital Shorcodes
 *@since 1.0
*/

/**
 * Notification
 */
function km_notice($params, $content = null){
	extract(shortcode_atts(array(
		'type' => 'unknown'
	), $params));
	$content = preg_replace('/<br class="nc".\/>/', '', $content);
	$result = '<div class="alert alert-'.$type.'">';
	$result .= '<button class="close" type="button" data-dismiss="alert">x</button>';
	$result .= do_shortcode($content );
	$result .= '</div>'; 
	return force_balance_tags( $result );
}
add_shortcode('notification', 'km_notice');
