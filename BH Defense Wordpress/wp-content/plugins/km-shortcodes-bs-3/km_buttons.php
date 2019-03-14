<?php 
/**
 *KM Digital shortcodes grid
 *@package KM Digital Shorcodes
 *@since 1.0
*/

/**
 * Button
 */
function km_buttons($params, $content = null){
	extract(shortcode_atts(array(
		'size' => 'default',
		'type' => 'default',
		'value' => 'button',
		'href' => "#"
	), $params));

	$content = preg_replace('/<br class="nc".\/>/', '', $content);
	$result = '<a class="btn btn-'.$size.' btn-'.$type.'" href="'.$href.'">'.$value.'</a>';
	return force_balance_tags( $result );
}
add_shortcode('button', 'km_buttons');
