<?php
/**
 * Plugin Name: JSON REST Path Resolver
 * Description: Resolves standard Wordpress paths to JSON REST API endpoints
 * Author: Michael Kropat
 * Author URI: https://michael.kropat.name/
 * Version: 0.1
 */

include_once( dirname( __FILE__ ) . '/lib/wp-path.php' );
include_once( dirname( __FILE__ ) . '/lib/json-rest-api.php' );

class JSON_Path {
	protected $server;

	public function __construct(WP_JSON_ResponseHandler $server) {
		$this->server = $server;
	}

	public function registerRoutes( $routes ) {
		$post_routes = array(
			'/path(?<path>.*)' => array( array( $this, 'getPath' ), WP_JSON_Server::READABLE ),
		);
		return array_merge( $routes, $post_routes );
	}

	public function getPath( $path ) {
		$query = get_query_from_path( $path );
		$preparer = new JSON_REST_API_Preparer( $this->server );
		$posts = array_map( 'get_object_vars', $query->posts );
		return array_map( array( $preparer, 'prepare_post' ), $posts );
	}
}

function json_path_default_filters($server) {
	$json_path = new JSON_Path($server);
	add_filter( 'json_endpoints', array( $json_path, 'registerRoutes' ), 0 );
}
add_action( 'wp_json_server_before_serve', 'json_path_default_filters' );

