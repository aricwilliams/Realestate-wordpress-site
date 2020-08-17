<?php
/*
Template Name: About Us
*/


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <?php  wp_head();  ?>
    <meta name="viewport" content="width=!, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
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
                 <h3><?php 

                    $variable = get_field('title_text_sub');
                    
                    // do something with $variable
                    echo $variable;
                ?></h3>
                
                    
                
            </div>
        </div>
    </div>
</div> <!--end of hero overlay-->
    
    <!-- END OF HERO SECTION -->
        <!-- meet the team section -->

        <div class="container-fluid meet-lead">
            <div class="row ">
                
                    <div class="col-sm-12 col-md-6 col-lg-6 agent-image ">
                        <a href="<?php echo home_url(); ?>"> 
                        <?php
                        $image = get_field('image_agent');
                        $picture = $image['sizes']['large'];
                        $alt =['alt'];
                        $title =['title'];

                        ?>

                        <img src="<?php echo $picture  ?>" alt="<?php echo $alt['alt'];?>" title="<?php echo $title['title'];?>">
                        </a>                 
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 agent-text">
                         <div class="text-bg-meet">
                            <div class="text-meet">
                                    <p><?php 
                                    $titleagent = get_field('lead_title');
                                    $variable = get_field('agent_desc');
                                    
                                    // do something with $variable
                                    ?><div class="title-agent">
                                        <?php echo $titleagent;?>
                                    </div><?php
                                    echo $variable;
                                    ?></p>
                            </div>
                         </div>           
                            
                    </div>    
                
            </div>

            
        </div>
                        

            <!-- end of meet team section -->

          
            <div class="body-sec">
      <div class="body-background">
        
        
        
        <section class="team-section">
          <div class="team-logo">Team</div>
          <div class="team-line"></div>
          <div class="team-row-bg"></div>

         <div class="agents-pic-bg-row">
              <div>


                <?php

                    new_agents();


                ?>

            </div>
          </div>

      
        </section>

            
</div>
</div>
      
     

    <?php get_footer();
?>