<?php 
/**
 *KM Digital shortcodes tabs
 *@package KM Digital Shorcodes
 *@since 1.0
*/

/**
 * Tabs
 */
//--------------
//	[tabs]
//		[thead]
//			[tab href="#link" title="title"]
//			[dropdown title="title"]
//				[tab href="#link" title="title"]
//			[/dropdown]
//		[/thead]
//		[tcontents]
//			[tcontent id="link"]
//			[/tcontent]
//		[/tcontents]
//	[/tabs]
//	---------------
//	

function km_tabs($params, $content = null){
	$content = preg_replace('/<br class="nc".\/>/', '', $content);
	$result = '<div class="tab_wrap">';
	$result .= do_shortcode($content );
	$result .= '</div>'; 
	return force_balance_tags( $result );
}
add_shortcode('tabs', 'km_tabs');

function km_thead($params, $content = null){
	$content = preg_replace('/<br class="nc".\/>/', '', $content);
	$result = '<ul class="nav nav-tabs">';
	$result .= do_shortcode($content );
	$result .= '</ul>'; 
	return force_balance_tags( $result );
}
add_shortcode('thead', 'km_thead');

function km_tab($params, $content = null){
	extract(shortcode_atts(array(
		'href' => '#',
		'title' => '',
		'class' => ''
 		), $params));
	$content = preg_replace('/<br class="nc".\/>/', '', $content);

	$result = '<li class="'.$class.'">';
	$result .= '<a data-toggle="tab" href="'.$href.'">'.$title.'</a>';
	$result .= '</li>'; 
	return force_balance_tags( $result );
}
add_shortcode('tab', 'km_tab');

function km_dropdown($params, $content = null){
	global $km_timestamp;
	extract(shortcode_atts(array(
		'title' => '',
		'id' => '',
		'class' => '',
		), $params));
	$content = preg_replace('/<br class="nc".\/>/', '', $content);
	$result = '<li class="dropdown">';
	$result .= '<a class="'.$class.'" id="'.$id.'" class="dropdown-toggle" data-toggle="dropdown">'.$title.'<b class="caret"></b></a>';
	$result .='<ul class="dropdown-menu">';
	$result .= do_shortcode($content);
	$result .= '</ul></li>'; 
	return force_balance_tags( $result );
}
add_shortcode('dropdown', 'km_dropdown');

function km_tcontents($params, $content = null){
	$content = preg_replace('/<br class="nc".\/>/', '', $content);
	$result = '<div class="tab-content">';
	$result .= do_shortcode($content );
	$result .= '</div>'; 
	return force_balance_tags( $result );
}
add_shortcode('tcontents', 'km_tcontents');

function km_tcontent($params, $content = null){
	extract(shortcode_atts(array(
		'id' => '',
		'class'=>'',
		), $params));
	$content = preg_replace('/<br class="nc".\/>/', '', $content);
	$class= ($class=='active')?'active in':'';
	$result = '<div class="tab-pane fade '.$class.'" id='.$id.'>';
	$result .= do_shortcode($content );
	$result .= '</div>'; 
	return force_balance_tags( $result );
}
add_shortcode('tcontent', 'km_tcontent');
