<?php

function get_query_from_path($uri) {
	global $wp, $wp_rewrite;

	$home_path = trim( parse_url( home_url(), PHP_URL_PATH ), '/' );

	//$uri = "/2008/09/17/another-post-with-everything-in-it-2/";
	//$uri = $_SERVER['REQUEST_URI'];

	$pathinfo = isset( $_SERVER['PATH_INFO'] ) ? $_SERVER['PATH_INFO'] : '';
	list( $pathinfo ) = explode( '?', $pathinfo );
	$pathinfo = str_replace( "%", "%25", $pathinfo );

	list( $req_uri ) = explode( '?', $uri );
	$req_uri = str_replace($pathinfo, '', $req_uri);                                                     
	$req_uri = trim($req_uri, '/');                                                                      
	$req_uri = preg_replace("|^$home_path|i", '', $req_uri);                                             
	$req_uri = trim($req_uri, '/');    
	$request = $req_uri;

	$rewrite = $wp_rewrite->wp_rewrite_rules();

	// Look for matches.
	$request_match = $request;
	$matched_rule = NULL;
	if ( empty( $request_match ) ) {
		// An empty request could only match against ^$ regex
		if ( isset( $rewrite['$'] ) ) {
			$matched_rule = '$';
			$query = $rewrite['$'];
			$matches = array('');
		}
	} else {
		foreach ( (array) $rewrite as $match => $query ) {
			// If the requesting file is the anchor of the match, prepend it to the path info.
			if ( ! empty($req_uri) && strpos($match, $req_uri) === 0 && $req_uri != $request )
				$request_match = $req_uri . '/' . $request;

			if ( preg_match("#^$match#", $request_match, $matches) ||
				preg_match("#^$match#", urldecode($request_match), $matches) ) {

				if ( $wp_rewrite->use_verbose_page_rules && preg_match( '/pagename=\$matches\[([0-9]+)\]/', $query, $varmatch ) ) {
					// this is a verbose page match, lets check to be sure about it
					if ( ! get_page_by_path( $matches[ $varmatch[1] ] ) )
						continue;
				}

				// Got a match.
				$matched_rule = $match;
				break;
			}
		}
	}

	if ( isset( $matched_rule ) ) {
		// Trim the query of everything up to the '?'.
		$query = preg_replace("!^.+\?!", '', $query);

		// Substitute the substring matches into the query.
		$query = addslashes(WP_MatchesMapRegex::apply($query, $matches));

		$matched_query = $query;

		// Parse the query.
		parse_str($query, $perma_query_vars);

		// If we're processing a 404 request, clear the error var since we found something.
		//if ( '404' == $error )
			//unset( $error, $_GET['error'] );
	}

	$query_vars = array();
	$post_type_query_vars = array();

	$public_query_vars = array('m', 'p', 'posts', 'w', 'cat', 'withcomments', 'withoutcomments', 's', 'search', 'exact', 'sentence', 'calendar', 'page', 'paged', 'more', 'tb', 'pb', 'author', 'order', 'orderby', 'year', 'monthnum', 'day', 'hour', 'minute', 'second', 'name', 'category_name', 'tag', 'feed', 'author_name', 'static', 'pagename', 'page_id', 'error', 'comments_popup', 'attachment', 'attachment_id', 'subpost', 'subpost_id', 'preview', 'robots', 'taxonomy', 'term', 'cpage', 'post_type');
	$public_query_vars = apply_filters( 'query_vars', $public_query_vars );

	foreach ( get_post_types( array(), 'objects' ) as $post_type => $t )
		if ( $t->query_var )
			$post_type_query_vars[$t->query_var] = $post_type;

	foreach ( $public_query_vars as $wpvar ) {
		//if ( isset( $this->extra_query_vars[$wpvar] ) )
			//$this->query_vars[$wpvar] = $this->extra_query_vars[$wpvar];
		if ( isset( $_POST[$wpvar] ) )
			$query_vars[$wpvar] = $_POST[$wpvar];
		elseif ( isset( $_GET[$wpvar] ) )
			$query_vars[$wpvar] = $_GET[$wpvar];
		elseif ( isset( $perma_query_vars[$wpvar] ) )
			$query_vars[$wpvar] = $perma_query_vars[$wpvar];

		if ( !empty( $query_vars[$wpvar] ) ) {
			if ( ! is_array( $query_vars[$wpvar] ) ) {
				$query_vars[$wpvar] = (string) $query_vars[$wpvar];
			} else {
				foreach ( $query_vars[$wpvar] as $vkey => $v ) {
					if ( !is_object( $v ) ) {
						$query_vars[$wpvar][$vkey] = (string) $v;
					}
				}
			}

			if ( isset($post_type_query_vars[$wpvar] ) ) {
				$query_vars['post_type'] = $post_type_query_vars[$wpvar];
				$query_vars['name'] = $query_vars[$wpvar];
			}
		}
	}


	//$this->query_vars = array();
	//$wp = new WP();
	//$wp->main();
	//$wp->build_query_string();
	$query = new WP_Query();
	$query->query($query_vars);
	//$wp_query->parse_query("/2008/09/17/another-post-with-everything-in-it-2/");
	
	return $query;
}
