<?php 
/**
 *KM Digital shortcodes grid
 *@package KM Digital Shorcodes
 *@since 1.0
*/

/**
 * Row
 */
function km_row($params, $content = null){
	extract(shortcode_atts(array(
		'class' => 'row-fluid'
	), $params));
	$content = preg_replace('/<br class="nc".\/>/', '', $content);
	$result = '<div class="'.$class.'">';
	$result .= do_shortcode($content );
	$result .= '</div>'; 
	return force_balance_tags( $result );
}
add_shortcode('row', 'km_row');

/**
 * Col span
 */
function km_span($params,$content=null){
	extract(shortcode_atts(array(
		'class' => 'span1'
		), $params));

	$result = '<div class="'.$class.'">';
	$result .= do_shortcode($content );
	$result .= '</div>'; 
	return force_balance_tags( $result );
}
add_shortcode('col', 'km_span');
