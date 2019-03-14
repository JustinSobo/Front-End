<?php
/*
Plugin Name: KM shortcodes
Plugin URI: http://www.kmdig.com
Description: A simple shortcode generator. Add buttons, columns, tabs, toggles and alerts to your theme.
Version: 1.0.1
Author: KM
Author URI: http://www.kmdig.com
*/

require_once('km_grid.php');
require_once('km_alert.php');
require_once('km_buttons.php');
require_once('km_tabs.php');
require_once('km_collapse.php');
require_once('km_icons.php');
require_once('km_carousel.php');

class KMShortcodes{
	
	function __construct()
	{
		require_once('shortcodes.php');
		add_action('init',array(&$this, 'init'));
	}
	
	function init(){
	
		/* Un-comment below if using on theme not based on bootstrap
		if(!is_admin()){
			wp_enqueue_style("km_bootstrap", plugins_url('assets/css/bootstrap.css', __FILE__ ));
			wp_enqueue_style("km_shortcodes", plugins_url('assets/css/shortcodes.css', __FILE__ ));
			wp_enqueue_script('km_bootstrap', plugins_url('assets/js/bootstrap.js', __FILE__ ),array('jquery'));
		}
		*/

		if ( ! current_user_can('edit_posts') && ! current_user_can('edit_pages') ) {
	    	return;
		}
	 
		if ( get_user_option('rich_editing') == 'true' ) {
		//wp_enqueue_style("km_bootstrap", plugins_url('assets/css/bootstrap.css', __FILE__ ));

			add_filter( 'mce_external_plugins', array(&$this, 'regplugins') );
			add_filter( 'mce_buttons_3', array(&$this, 'regbtns') );
		}
	}

	function regbtns($buttons)
	{
		array_push($buttons, 'km_grid');
		array_push($buttons, 'km_alerts');
		array_push($buttons, 'km_buttons');
		array_push($buttons, 'km_icons');
		array_push($buttons, 'km_tabs');
		array_push($buttons, 'km_collapse');
		array_push($buttons, 'km_carousel');
		return $buttons;
	}


	function regplugins($plgs)
	{
		
		$plgs['km_grid'] = plugins_url('assets/js/plugins/grid.js', __FILE__ );
		$plgs['km_alerts'] = plugins_url('assets/js/plugins/alert.js', __FILE__ );
		$plgs['km_buttons'] = plugins_url('assets/js/plugins/buttons.js', __FILE__ );
		$plgs['km_tabs'] = plugins_url('assets/js/plugins/tabs.js', __FILE__ );
		$plgs['km_icons'] = plugins_url('assets/js/plugins/icons.js', __FILE__ );
		$plgs['km_collapse'] = plugins_url('assets/js/plugins/collapse.js', __FILE__ );
		$plgs['km_carousel'] = plugins_url('assets/js/plugins/carousel.js', __FILE__ );
		return $plgs;
	}



}
$kmcodes = new KMShortcodes();
