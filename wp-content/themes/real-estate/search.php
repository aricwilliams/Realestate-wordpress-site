<?php
/*
Template Name: Search results
*/

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <?php  wp_head();  ?>
    <meta name="viewport" content="width=!, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div class="hero-overlay">
                <?php
                  $image = get_field('hero_image');
                  $picture = $image['sizes']['large'];
                  $alt =['alt'];
                  $title =['title'];

                ?>

    <div class="hero" style="background-image: url(<?php echo $picture ?>)"alt="<?php echo $alt['alt'];?>" title="<?php echo $title['title'];?>">
        <header>
              <div class="header-container">
              
              <a href="<?php echo home_url(); ?>"> 
                <?php
                  $image = get_field('image');
                  $picture = $image['sizes']['large'];
                  $alt =['alt'];
                  $title =['title'];

                ?>

                <img src="<?php echo $picture  ?>" alt="<?php echo $alt['alt'];?>" title="<?php echo $title['title'];?>">
                
                </a>
                <nav class="nav-bar">
                  <ul>
                    <li>
                      <?php
                          $args = array(
                            'theme_location' => 'main-menu',
                            'container' => 'nav',
                            'container_class' => 'main-menu'
                          );
                          wp_nav_menu($args)
                      ?>
                    
                    </li>
                    <!-- <li>Rent</li>
                    <li>Sell</li>
                    <li>Compass Exclusives</li>
                    <li>New Development</li>
                    <li>Agents</li>
                    <li>Register/Sign In</li> -->
                  </ul>
                </nav> 
            </div> <!--end of header-container-->
        </header>


        <div class="search-part">
            <div class="search-content">
                <h1><?php 

                    $variable = get_field('title_text');
                    
                    // do something with $variable
                    echo $variable;
                ?></h1>


            <div class="search-con">
                <div class="search-btn">
                  <div class="s-btn-l" id="s-btn">Buy</div>
                  <div class="s-btn-r" id="s-btn">Rent</div>
                </div>
                <form class="form-in" role="search" method="get" action="<?php echo home_url('/'); ?>">
                  <input type="search" name="s" id="filter" placeholder="City, Neighborhood, Adress, School, ZIP, Agent, MLS #" value="<?php echo get_search_query() ?>">

                  <div class="search-icon"></div>
                    <i class="fa fa-search" aria-hidden="true"></i>
                  </div>
                  <div class="hidden-btn">
                    <input  type="submit" >
                  </div>
                  
                  
                  </input>
              
                </form>
              </div>
                
                    
                
            </div>
        </div>







    </div>
</div> <!--end of hero overlay-->
    
    <!-- END OF HERO SECTION -->
        

        <div id="hero-overlay-footer">

        
            <section class="about-us-bg " style="background-image: url(<?php echo get_theme_file_uri('') ?>);background-repeat: no-repeat; ">
			<div ></div>
    	<div class="container">
    		<div class="row">
    			<div class="  col-lg-12">
    				<div class="listing-section ">
                    <?php 
                                            if($_GET['s'] && !empty($_GET['s']))
                                            {
                                                $text = $_GET['s'];
                                            }

                                        ?>
                                            <h4>Searching for: <?php echo $text; ?></h4>
	            <h2 class="mb-3 header-all">Homes Available Now</h2>
                        <div class="body-sec">
                            <div class="body-background">
                                
                                
                                <div class="list-content">

                                    <div class="list-overlay">

                                        <ul class="listings-list">
                                        
                                            

                                        <?php 
                                                    // $args = array(
                                                    //     'post_type' => 'house_listings',
                                                    //     'posts_per_page' => 6
                                                    // );
                                                    // $args = get_posts(array(
                                                    //     'numberposts' =>  1,
                                                    //     'include'   => '156,154,152',
                                                    //     'post_type' => 'house_listings',
                                                    // ));

                                                    $args = array(
                                                        'post_type' => 'house_listings',
                                                        'posts_per_page' => -1,
                                                        'post_status' => 'publish',
                                                        's' => $text,
                                                    );
                                                    $query = new WP_Query($args);
                                                    if ($query->have_posts() ) :

                                                        while ( $query->have_posts() ) : $query->the_post();

                                                        $listing_company = get_field('listing_company');
                                                        $price = get_field('price');
                                                        $address = get_field('address');
                                                        $baths = get_field('baths');
                                                        $sf = get_field('square_foot_');
                                                        $image = get_field('image');
                                                        $beds = get_field('bed');
                                                        $picture = $image['sizes']['large'];
                                                ?>
                                                <li class="card">
                                                
                                                        <div class="listings-1"><img src="<?php echo $picture  ?>" >
                                    
                                    
                                                        <div class="listings-1-con">
                                                        <div class="listing-comp"><?php echo $listing_company  ?></div>
                                                        <div class="list-info">
                                                            <h3><?php echo $price  ?></h3>
                                                            <div class="add-shrink">
                                                                <p class="add-cont"><?php echo $address  ?></p>
                                                            </div>
                                                            
                                                        </div>
                                                        <div class="house-info">
                                                            <ul>
                                                            <li><?php echo $beds  ?><br>Beds</li>
                                                            <li><?php echo $baths  ?> <br>Baths</li>
                                                            <li><?php echo $sf  ?> <br>Sq. Ft.</li>
                                                            </ul>
                                                        </div>
                                                        </div>
                                                        </div>
                                                    
                                                </li>  
                                                       <?php endwhile;
                                                        
                                                        wp_reset_postdata();
                                                    endif;
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
    				</div>
    			</div>
    			<div class="col-md-100  half ftco-animate form-all">
    				<h2 class="mb-4 header-form">Free Consultation</h2>
    				<form action="#" class="appointment">
    					<div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Name">
                            </div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                            <input type="text" class="form-control" placeholder="Email">
                            </div>
                            </div>
                            <div class="col-md-12">
                            <div class="form-group">
                            <div class="form-field">
                            <div class="select-wrap">
                            <select name="" id="" class="form-control">
                                <option value="">Practice Areas</option>
                                <option value="">Business Law</option>
                                <option value="">Criminal Law</option>
                                <option value="">Family Law</option>
                                <option value="">Judicial Law</option>
                                <option value="">Personal Injury</option>
                                <option value="">Real Estate Law</option>
                            </select>
                       

                          </select>
	                    </div>
			              </div>
			    				</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			              <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
			            </div>
                        </div>
                        
                            <div class="col-md-12 form-button">
                                <div class="form-group">
                                    <input type="submit" value="Send message" class="btn btn-primary py-3 px-4">
                                </div>
                            </div>
    			    </div>
	          </form>
    			</div>
    		</div>
    	</div>
    </section>
    </div>

    <?php get_footer();
?>