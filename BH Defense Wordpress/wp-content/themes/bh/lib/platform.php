<?php 
/* ==========================================================================
   Roots wrapper overide
   ========================================================================== */
add_filter('rwo_title', 'rwo_title_custom');
function rwo_title_custom() {
  return 'Select Template Wrapper'; // Replaces 'Roots Wrapper Override'
}

add_filter('rwo_field', 'rwo_field_custom');
function rwo_field_custom() {
  return '(apply default)'; // Replaces '(no override)'
}

add_filter('rwo_help', 'rwo_help_custom');
function rwo_help_custom() {
  return 'Set to (apply default) to allow the wrappers to apply the default template.'; // Replaces 'Set to (no override) to allow the wrappers to apply the default template.'
}
/* ==========================================================================
   Turbolinks
   ========================================================================== */
function add_xhr_location(){
  header("X-XHR-Current-Location: ". selfURL());
}

add_action('template_redirect', 'add_xhr_location');


//http://stackoverflow.com/questions/2236873/getting-the-full-url-of-the-current-page-php
function selfURL() 
{ 
    $s = empty($_SERVER["HTTPS"]) ? '' : ($_SERVER["HTTPS"] == "on") ? "s" : ""; 
    $protocol = "http".$s; 
    $port = ($_SERVER["SERVER_PORT"] == "80") ? "" : (":".$_SERVER["SERVER_PORT"]); 
    return $protocol."://".$_SERVER['SERVER_NAME'].$port.$_SERVER['REQUEST_URI']; 
}

/* ==========================================================================
   ADMIN cleanup/removal/restrict 
   ========================================================================== */

//Hide admin menu items except for specfied user


function km_remove_admin_menus() {

global $current_user;
	get_currentuserinfo();
 
//removed if($current_user->user_login != 'kmdig') because certain items were hiding that shouldn't have been
if(get_current_user_id()!=1):
	remove_menu_page( 'link-manager.php' );
	//remove_menu_page('themes.php');
	remove_menu_page('tools.php');
	remove_menu_page('theme-editor.php');
	remove_menu_page('tools.php');
	remove_menu_page('plugins.php');
	remove_menu_page( 'options-general.php' );
	remove_menu_page( 'edit.php?post_type=acf' );
	remove_submenu_page( 'index.php', 'update-core.php' );
	endif;
}
	
add_action( 'admin_menu', 'km_remove_admin_menus', 999 );

function hide_remove_admin_items()//Remove items from admin by user using display:none
{
	global $current_user;
	get_currentuserinfo();
 
	if($current_user->user_login != 'kmdg')
	{
		echo '<style type="text/css">#SnS_meta_box,.wp-first-item, li#wp-admin-bar-wp-logo.menupop, #gf_dashboard_message, #akismet-warning,# {display:none!important;}</style>';
	}
}
 
add_action('admin_head', 'hide_remove_admin_items');


// Prevent access to ACF
function km_acf_prevent_url_access()
{
	global $current_screen, $current_user;

	// Not our pages, exit earlier
	if( 'edit-acf' != $current_screen->id && 'custom-fields_page_acf-settings' != $current_screen->id )
		return;

	// Authorized user, exit earlier
	if( $current_user->user_login == 'kmdig' )
		return;

	// User not authorized to access page, redirect to dashboard
	wp_redirect( admin_url() ); 
	exit;
}

add_action( 'admin_head', 'km_acf_prevent_url_access' );

/* ==========================================================================
   Modify Admin
   ========================================================================== */
   
//CUSTOM LOGIN PAGE
// calling your own login css so you can style it 
function km_login_css() {
	/* i couldn't get wp_enqueue_style to work :( */
	echo '<link rel="stylesheet" href="' . get_stylesheet_directory_uri() . '/assets/css/login.css">';
}

// changing the logo link from wordpress.org to your site 
//function km_login_url() { echo bloginfo('url'); }

// changing the alt text on the logo to show your site name 
function km_login_title() { echo get_option('blogname'); }

// calling it only on the login page
add_action('login_head', 'km_login_css');
//add_filter('login_headerurl', 'km_login_url');
//add_filter('login_headertitle', 'km_login_title');


// Custom Backend Footer
function km_custom_admin_footer() {
	echo '<span id="footer-thankyou">Made by <a href="http://kmdig.com" target="_blank">KM Dig</a> Powered by <a href="http://kmdig.com" target="_blank">WordPress</a></span>.';
}
// adding it to the admin area
add_filter('admin_footer_text', 'km_custom_admin_footer');

/**
 * Login With email based on http://wordpress.org/extend/plugins/wp-email-login/
 * If an email address is entered in the username box, then look up the matching username and authenticate as per normal, using that.
 *
 * @param string $user
 * @param string $username
 * @param string $password
 * @return Results of autheticating via wp_authenticate_username_password(), using the username found when looking up via email.
 */
function dr_email_login_authenticate( $user, $username, $password ) {
	
	if ( is_a( $user, 'WP_User' ) )
		return $user;

	if ( !empty( $username ) ) {
		$username = str_replace( '&', '&amp;', stripslashes( $username ) );
		$user = get_user_by( 'email', $username );
		if ( isset( $user, $user->user_login, $user->user_status ) && 0 == (int) $user->user_status )
			$username = $user->user_login;
	}

	return wp_authenticate_username_password( null, $username, $password );
}
remove_filter( 'authenticate', 'wp_authenticate_username_password', 20, 3 );
add_filter( 'authenticate', 'dr_email_login_authenticate', 20, 3 );

/**
 * Add compatibility for WPMU 2.9.1 and WPMU 2.9.2, props r-a-y
 */
if ( !function_exists( 'is_super_admin' ) ) :
	function get_super_admins() {
		global $super_admins;

		if ( isset( $super_admins ) )
			return $super_admins;
		else
			return get_site_option( 'site_admins', array( 'admin' ) );
	}

	function is_super_admin( $user_id = false ) {
		if ( ! $user_id ) {
			$current_user = wp_get_current_user();
			$user_id = ! empty( $current_user ) ? $current_user->id : 0;
		}

		if ( ! $user_id )
			return false;

		$user = new WP_User( $user_id );

		if ( is_multisite() ) {
			$super_admins = get_super_admins();
			if ( is_array( $super_admins ) && in_array( $user->user_login, $super_admins ) )
				return true;
		} else {
			if ( $user->has_cap( 'delete_users' ) )
				return true;
		}

		return false;
	}
endif;

/**
 * Modify the string on the login page to prompt for username or email address
 */
function username_or_email_login() {
	
	if ( 'wp-login.php' != basename( $_SERVER['SCRIPT_NAME'] ) )
		return;

	?><script type="text/javascript">
	// Form Label
	if ( document.getElementById('loginform') )
		document.getElementById('loginform').childNodes[1].childNodes[1].childNodes[0].nodeValue = '<?php echo esc_js( __( 'Username or Email', 'email-login' ) ); ?>';

	// Error Messages
	if ( document.getElementById('login_error') )
		document.getElementById('login_error').innerHTML = document.getElementById('login_error').innerHTML.replace( '<?php echo esc_js( __( 'username' ) ); ?>', '<?php echo esc_js( __( 'Username or Email' , 'email-login' ) ); ?>' );
	</script><?php
}
add_action( 'login_form', 'username_or_email_login' );
/**********************************************
end admin cleanup/removal/restrict
/**********************************************/
