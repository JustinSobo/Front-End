<?php 
/**
 *KM Digital shortcodes grid
 *@package KM Digital Shorcodes
 *@since 1.0
*/

/**
 * Button
 */
function km_icons($params, $content = null){
	extract(shortcode_atts(array(
		'name' => 'default'
	), $params));

	$content = preg_replace('/<br class="nc".\/>/', '', $content);
	$result = '<i class="'.$name.'"></i>';
	return force_balance_tags( $result );
}
add_shortcode('icon', 'km_icons');
