<?php
    /*
        Plugin Name: House Listings 
        Plugin URI: 
        Description: Add a new house listing into your theme
        Version: 1.0
        Author: Aric Williams
        Author URI: 
        Text Domain: houselisting
    */

    if(!defined('ABSPATH')) die();
    // keep somone from direct access to this file...security 


// Register new Custom Post Type
function house_listing() {

	$labels = array(
		'name'                  => _x( 'newlisting', 'Post Type General Name', 'houselisting' ),
		'singular_name'         => _x( 'listing', 'Post Type Singular Name', 'houselisting' ),
		'menu_name'             => __( 'newlisting', 'houselisting' ),
		'name_admin_bar'        => __( 'newlisting', 'houselisting' ),
		'archives'              => __( 'Archive', 'houselisting' ),
		'attributes'            => __( 'Attributes', 'houselisting' ),
		'parent_item_colon'     => __( 'Parent listing', 'houselisting' ),
		'all_items'             => __( 'All newlisting', 'houselisting' ),
		'add_new_item'          => __( 'Add listing', 'houselisting' ),
		'add_new'               => __( 'Add listing', 'houselisting' ),
		'new_item'              => __( 'New listing', 'houselisting' ),
		'edit_item'             => __( 'Edit listing', 'houselisting' ),
		'update_item'           => __( 'Update listing', 'houselisting' ),
		'view_item'             => __( 'View listing', 'houselisting' ),
		'view_items'            => __( 'View listing', 'houselisting' ),
		'search_items'          => __( 'Search listing', 'houselisting' ),
		'not_found'             => __( 'Not found', 'houselisting' ),
		'not_found_in_trash'    => __( 'Not found in trash', 'houselisting' ),
		'featured_image'        => __( 'Featured Image', 'houselisting' ),
		'set_featured_image'    => __( 'Save Featured Image', 'houselisting' ),
		'remove_featured_image' => __( 'Remove Featured Image', 'houselisting' ),
		'use_featured_image'    => __( 'Use as Featured Image', 'houselisting' ),
		'insert_into_item'      => __( 'Insert in listing', 'houselisting' ),
		'uploaded_to_this_item' => __( 'Add in listing', 'houselisting' ),
		'items_list'            => __( 'newlisting List', 'houselisting' ),
		'items_list_navigation' => __( 'Navigate to newlisting', 'houselisting' ),
		'filter_items_list'     => __( 'Filter newlisting', 'houselisting' ),
	);
	$args = array(
		'label'                 => __( 'listing', 'houselisting' ),
		'description'           => __( 'newlisting for houselisting Website', 'houselisting' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		'hierarchical'          => false, // False = posts - No child posts
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
        'menu_position'         => 6,
        'menu_icon'             => 'dashicons-admin-multisite',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
        'capability_type'       => 'page'
	);
    register_post_type( 'house_listings', $args );
    // this registers a post type 'house_listings' with an array of arguments.

}
add_action( 'init', 'house_listing', 0 );


?>