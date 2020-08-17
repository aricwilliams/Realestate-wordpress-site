<?php
/*
Template Name: Home Page
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
        <div class="hero" style="background-image: url(<?php echo get_theme_file_uri('/img/big-house.jpg') ?>)">
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
                <input placeholder="City, Neighborhood, Adress, School, ZIP, Agent, MLS #">
              </div>
              <div class="search-icon"><i class="fa fa-search" aria-hidden="true"></i></div>
            </div>
          </div>
        </div>
      </div> <!--end of hero overlay-->
    
    <!-- END OF HERO SECTION -->
   
     
    

    <div class="body-sec">
      <div class="body-background">
        <h3>Recent Properties</h3>
        <p>Listing We thing you'll love.</p>
        
        <div class="list-content">

          <div class="list-overlay">

            <?php
                listings();

            ?>
          </div>

          

        </div> <!--End of list content-->
        

            
</div>

      </div>
      
    </div>
    <div class="margin-end-of-page"></div>
  
    
      
  
    <script src="js/script.js"></script>
  </body>


    



    <?php get_footer();
?>