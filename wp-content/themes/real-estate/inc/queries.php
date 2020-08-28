<?php

function listings(){?>
<ul class="listings-list">

    <?php 
                $args = array(
                    'post_type' => 'house_listings',
                    'posts_per_page' => 6
                );

                $listings = new WP_Query($args);
                // The following example can be used to determine if any posts exist and loop through them if they do... access the contents of that object 
                while($listings->have_posts()): $listings->the_post();
        

            
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
            <?php endwhile; wp_reset_postdata(); ?>
</ul>
<?php }

function listingsall(){?>
    <ul class="listings-list-all">
    
        <?php 
                    $args = array(
                        'post_type' => 'house_listings',
                        'posts_per_page' => -1
                    );
    
                    $listings = new WP_Query($args);
                    // The following example can be used to determine if any posts exist and loop through them if they do... access the contents of that object 
                    while($listings->have_posts()): $listings->the_post();
            
    
                
                        $listing_company = get_field('listing_company');
                        $price = get_field('price');
                        $address = get_field('address');
                        $baths = get_field('baths');
                        $sf = get_field('square_foot_');
                        $image = get_field('image');
                        $beds = get_field('bed');
                        $picture = $image['sizes']['large'];
                ?>
                <li class="card-all">
                
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
                <?php endwhile; wp_reset_postdata(); ?>
    </ul>
    <?php }


// this is a query for new agents added to the database



function new_agents(){?>
<ul class="agent-listings">

    <?php 
                $args = array(
                    'post_type' => 'agent_profile',
                    // 'post_per_page' => -3
                );

                $listings = new WP_Query($args);
                // The following example can be used to determine if any posts exist and loop through them if they do... access the contents of that object 
                while($listings->have_posts()): $listings->the_post();
        

            
                    $title = get_field('title');
                    $phonenumber = get_field('phone_number');
                    $facebook = get_field('facebook');
                    $instagram = get_field('instagram');
                    $name = get_field('name');
                    $image = get_field('image');
                    $picture = $image['sizes']['large'];
                    $facebook = get_field('facebook');
                    $instagram = get_field('instagram');
            ?>
            <li class="agent">
            
                <img src="<?php echo $picture  ?>">
                  <h5><?php echo $name  ?></h5>
                  <p class="info"><?php echo $title  ?></p>
                  <P class="num"><?php echo $phonenumber   ?></P>
                  <div class="i">

                    <?php    

                        if($facebook):?>
                            <i class="fab fa-facebook-square"></i>

                            <?php else:?>

                        <?php endif;?>

                        <?php if($instagram):?>

                             <i class="fab fa-instagram"></i>
                            <?php else:?>

                        <?php endif;?>

                
            </li>  
            <?php endwhile; wp_reset_postdata(); ?>
</ul>
<?php }
function new_agents_all(){?>
<ul class="agent-listings">

    <?php 
                $args = array(
                    'post_type' => 'agent_profile',
                    'posts_per_page' => -1
                );

                $listings = new WP_Query($args);
                // The following example can be used to determine if any posts exist and loop through them if they do... access the contents of that object 
                while($listings->have_posts()): $listings->the_post();
        

            
                    $title = get_field('title');
                    $phonenumber = get_field('phone_number');
                    $facebook = get_field('facebook');
                    $instagram = get_field('instagram');
                    $name = get_field('name');
                    $image = get_field('image');
                    $picture = $image['sizes']['large'];
                    $facebook = get_field('facebook');
                    $instagram = get_field('instagram');
            ?>
            <li class="agent">
            
                <img src="<?php echo $picture  ?>">
                  <h5><?php echo $name  ?></h5>
                  <p class="info"><?php echo $title  ?></p>
                  <P class="num"><?php echo $phonenumber   ?></P>
                  <div class="i">

                    <?php    

                        if($facebook):?>
                            <i class="fab fa-facebook-square"></i>

                            <?php else:?>

                        <?php endif;?>

                        <?php if($instagram):?>

                             <i class="fab fa-instagram"></i>
                            <?php else:?>

                        <?php endif;?>

                
            </li>  
            <?php endwhile; wp_reset_postdata(); ?>
</ul>
<?php } 