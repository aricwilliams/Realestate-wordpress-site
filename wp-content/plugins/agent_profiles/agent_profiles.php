<?php
    /*
        Plugin Name: Agent Profiles 
        Plugin URI: 
        Description: Add a new agent profiles to the website
        Version: 1.0
        Author: Aric Williams
        Author URI: 
        Text Domain: agentprofiles 
    */

    if(!defined('ABSPATH')) die();
    // keep somone from direct access to this file...security 


// Register new Custom Post Type
function agent_profiles() {

	$labels = array(
		'name'                  => _x( 'New Agent Profile ', 'Post Type General Name', 'Agent Profile ' ),
		'singular_name'         => _x( 'AgentProfile ', 'Post Type Singular Name', 'Agent Profile ' ),
		'menu_name'             => __( 'New Agent Profile ', 'Agent Profile ' ),
		'name_admin_bar'        => __( 'New Agent Profile ', 'Agent Profile ' ),
		'archives'              => __( 'Archive', 'Agent Profile ' ),
		'attributes'            => __( 'Attributes', 'Agent Profile ' ),
		'parent_item_colon'     => __( 'Parent Profile ', 'Agent Profile ' ),
		'all_items'             => __( 'All New Agent Profile ', 'Agent Profile ' ),
		'add_new_item'          => __( 'Add Profile ', 'Agent Profile ' ),
		'add_new'               => __( 'Add Profile ', 'Agent Profile ' ),
		'new_item'              => __( 'New Profile ', 'Agent Profile ' ),
		'edit_item'             => __( 'Edit Profile ', 'Agent Profile ' ),
		'update_item'           => __( 'Update Profile ', 'Agent Profile ' ),
		'view_item'             => __( 'View Profile ', 'Agent Profile ' ),
		'view_items'            => __( 'View Profile ', 'Agent Profile ' ),
		'search_items'          => __( 'Search Profile ', 'Agent Profile ' ),
		'not_found'             => __( 'Not found', 'Agent Profile ' ),
		'not_found_in_trash'    => __( 'Not found in trash', 'Agent Profile ' ),
		'featured_image'        => __( 'Featured Image', 'Agent Profile ' ),
		'set_featured_image'    => __( 'Save Featured Image', 'Agent Profile ' ),
		'remove_featured_image' => __( 'Remove Featured Image', 'Agent Profile ' ),
		'use_featured_image'    => __( 'Use as Featured Image', 'Agent Profile ' ),
		'insert_into_item'      => __( 'Insert in Profile ', 'Agent Profile ' ),
		'uploaded_to_this_item' => __( 'Add in Profile ', 'Agent Profile ' ),
		'items_list'            => __( 'New Agent Profile  List', 'Agent Profile ' ),
		'items_list_navigation' => __( 'Navigate to New Agent Profile ', 'Agent Profile ' ),
		'filter_items_list'     => __( 'Filter New Agent Profile ', 'Agent Profile ' ),
	);
	$args = array(
		'label'                 => __( 'AgentProfile ', 'Agent Profile ' ),
		'description'           => __( 'New Agent Profile  for Agent Profile  Website', 'Agent Profile ' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		'hierarchical'          => false, // False = posts - No child posts
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
        'menu_position'         => 9,
        'menu_icon'             => 'dashicons-buddicons-buddypress-logo',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
        'capability_type'       => 'page'
	);
    register_post_type( 'agent_profile', $args );
    // this registers a post type 'house_Profile s' with an array of arguments.

}
add_action( 'init', 'agent_profiles', 0 );


?>