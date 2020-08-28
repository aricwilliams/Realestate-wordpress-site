<?php

//  link to query file 
    require get_template_directory() . '/inc/queries.php';

    function real_estate_files(){
        wp_enqueue_style('bootstrap', '//stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css');
        wp_enqueue_script('bootstrap-script', '//stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js');
        wp_enqueue_style('google-api', '//fonts.googleapis.com/css2?family=Playfair+Display&family=Open+Sans:wght@300&family=Raleway:wght@100&display&family=Dancing+Script&display=swap');
        wp_enqueue_style('font-awsome', '//use.fontawesome.com/releases/v5.13.1/css/all.css');

        wp_enqueue_script('jquery', get_template_directory_uri() . '//code.jquery.com/jquery-3.5.1.js', array(), '1', true);

        wp_enqueue_script('javascript', get_template_directory_uri() . '/js/scripts.js', array('jquery'), '1.0.0', true);
        

        wp_enqueue_style('realEstateMainStyles',get_stylesheet_uri());
    }

    add_action('wp_enqueue_scripts', 'real_estate_files');

    function realestate_menus(){
        register_nav_menus( array(
            'main-menu' => 'Main Menu',
            'Company-menu' => 'Company footer Menu',
            'Explore-menu' => 'Explore footer Menu'
        ) );
    }


    add_action('init', 'realestate_menus');


    function featuredImage(){

            add_image_size( 'square', 350, 350, true );
            add_image_size( 'portrait', 350, 724, true );
            add_image_size( 'box', 400, 375, true );
            add_image_size( 'mediumSize', 700, 400, true );
            add_image_size( 'blog', 966, 644, true );

        add_theme_support( 'post-thumbnails' );
    }

    add_action('after_setup_theme', 'featuredImage');


    add_filter( 'default_content', 'my_editor_content' );
    function my_editor_content( $content ) {
    $content = "listing company: NC Realtors 

    price: $94,476,000
    
    address: 1345 Night St, Miami Beach, FL 33140
    
    bed: 20
    
    baths: 9
    
    square foot: 30400";
    return $content;
}

?>



