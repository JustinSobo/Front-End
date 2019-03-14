<?php
class JSON_REST_API_Preparer {
	protected $server;
	public function __construct(WP_JSON_ResponseHandler $server) {
		$this->server = $server;
	}

	public function prepare_post( $post, $context = 'view' ) {
		// holds the data for this post. built up based on $fields
		$_post = array(
			'ID' => (int) $post['ID'],
		);

		$post_type = get_post_type_object( $post['post_type'] );
		//if ( ! $this->checkReadPermission( $post ) )
			//return new WP_Error( 'json_user_cannot_read', __( 'Sorry, you cannot read this post.' ), array( 'status' => 401 ) );

		// prepare common post fields
		$post_fields = array(
			'title'        => get_the_title( $post['ID'] ), // $post['post_title'],
			'status'       => $post['post_status'],
			'type'         => $post['post_type'],
			'author'       => (int) $post['post_author'],
			'content'      => apply_filters( 'the_content', $post['post_content'] ),
			'parent'       => (int) $post['post_parent'],
			#'post_mime_type'    => $post['post_mime_type'],
			'link'          => get_permalink( $post['ID'] ),
		);
		$post_fields_extended = array(
			'slug'           => $post['post_name'],
			'guid'           => apply_filters( 'get_the_guid', $post['guid'] ),
			'excerpt'        => $this->prepare_excerpt( $post['post_excerpt'] ),
			'menu_order'     => (int) $post['menu_order'],
			'comment_status' => $post['comment_status'],
			'ping_status'    => $post['ping_status'],
			'sticky'         => ( $post['post_type'] === 'post' && is_sticky( $post['ID'] ) ),
		);
		$post_fields_raw = array(
			'title_raw'   => $post['post_title'],
			'content_raw' => $post['post_content'],
			'guid_raw'    => $post['guid'],
		);

		// Dates
		$timezone = $this->server->get_timezone();

		$date = DateTime::createFromFormat( 'Y-m-d H:i:s', $post['post_date'], $timezone );
		$post_fields['date'] = $date->format( 'c' );
		$post_fields_extended['date_tz'] = $date->format( 'e' );
		$post_fields_extended['date_gmt'] = date( 'c', strtotime( $post['post_date_gmt'] ) );

		$modified = DateTime::createFromFormat( 'Y-m-d H:i:s', $post['post_modified'], $timezone );
		$post_fields['modified'] = $modified->format( 'c' );
		$post_fields_extended['modified_tz'] = $modified->format( 'e' );
		$post_fields_extended['modified_gmt'] = date( 'c', strtotime( $post['post_modified_gmt'] ) );

		// Authorized fields
		// TODO: Send `Vary: Authorization` to clarify that the data can be
		// changed by the user's auth status
		if ( current_user_can( $post_type->cap->edit_post, $post['ID'] ) ) {
			$post_fields_extended['password'] = $post['post_password'];
		}

		// Consider future posts as published
		if ( $post_fields['status'] === 'future' )
			$post_fields['status'] = 'publish';

		// Fill in blank post format
		$post_fields['format'] = get_post_format( $post['ID'] );
		if ( empty( $post_fields['format'] ) )
			$post_fields['format'] = 'standard';

		$post_fields['author'] = $this->prepare_author( $post['post_author'] );

		if ( 'view' === $context && 0 !== $post['post_parent'] ) {
			// Avoid nesting too deeply
			// This gives post + post-extended + meta for the main post,
			// post + meta for the parent and just meta for the grandparent
			$parent = get_post( $post['post_parent'], ARRAY_A );
			$post_fields['parent'] = $this->prepare_post( $parent, 'parent' );
		}

		// Merge requested $post_fields fields into $_post
		$_post = array_merge( $_post, $post_fields );

		// Include extended fields. We might come back to this.
		$_post = array_merge( $_post, $post_fields_extended );

		if ( 'edit' === $context && current_user_can( $post_type->cap->edit_post, $post['ID'] ) )
			$_post = array_merge( $_post, $post_fields_raw );
		elseif ( 'edit' === $context )
			return new WP_Error( 'json_cannot_edit', __( 'Sorry, you cannot edit this post' ), array( 'status' => 403 ) );

		// Post meta
		$_post['post_meta'] = $this->prepare_meta( $post['ID'] );

		// Entity meta
		$_post['meta'] = array(
			'links' => array(
				'self'            => json_url( '/posts/' . $post['ID'] ),
				'author'          => json_url( '/users/' . $post['post_author'] ),
				'collection'      => json_url( '/posts' ),
				'replies'         => json_url( '/posts/' . $post['ID'] . '/comments' ),
				'version-history' => json_url( '/posts/' . $post['ID'] . '/revisions' ),
			),
		);

		if ( ! empty( $post['post_parent'] ) )
			$_post['meta']['links']['up'] = json_url( '/posts/' . (int) $post['post_parent'] );

		return apply_filters( 'json_prepare_post', $_post, $post, $context );
	}

	protected function prepare_excerpt( $excerpt ) {
		if ( post_password_required() ) {
			return __( 'There is no excerpt because this is a protected post.' );
		}

		return apply_filters( 'the_excerpt', apply_filters( 'get_the_excerpt', $excerpt ) );
	}

	protected function prepare_meta( $post_id ) {
		$post_id = (int) $post_id;

		$custom_fields = (array) get_post_meta( $post_id );

		foreach ( $custom_fields as $meta_key => $meta_value ) {
			// Don't expose protected fields.
			if ( is_protected_meta( $meta_key ) )
			    unset( $custom_fields[$meta_key] );
		}

		return apply_filters( 'json_prepare_meta', $custom_fields );
	}

	protected function prepare_author( $author ) {
		$user = get_user_by( 'id', $author );

		if (!$author)
			return null;

		$author = array(
			'ID' => $user->ID,
			'name' => $user->display_name,
			'slug' => $user->user_nicename,
			'URL' => $user->user_url,
			'avatar' => $this->server->get_avatar_url( $user->user_email ),
			'meta' => array(
				'links' => array(
					'self' => json_url( '/users/' . $user->ID ),
					'archives' => json_url( '/users/' . $user->ID . '/posts' ),
				),
			),
		);

		if ( current_user_can( 'edit_user', $user->ID ) ) {
			$author['first_name'] = $user->first_name;
			$author['last_name'] = $user->last_name;
		}
		return $author;
	}
}
