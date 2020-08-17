<?php
/*
Template Name: Property Search
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
	            <h2 class="mb-3 header-all">Homes Available Now</h2>
                        <div class="body-sec">
                            <div class="body-background">
                                
                                
                                <div class="list-content">

                                    <div class="list-overlay">

                                        <?php
                                            listingsall();

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