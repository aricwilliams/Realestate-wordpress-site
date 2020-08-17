

<footer>
    <div class="footer-bg">
      <div class="footer-bg-con">
        <div class="company-items">
          <h3>Company</h3>
          <p>
          <?php
                          $args = array(
                            'theme_location' => 'Company-menu'
                            
                          );
                          wp_nav_menu($args)
                      ?>
          </p>
          <!-- <p>About Us</p>
          <p>Team</p>
          <p>Careers</p>
          <p>Investors</p>
          <p>Contact Us</p>
          <p>Offices</p>
          <p>Agent Experience</p> -->
        </div>
        <div class="explore-items">
          <h3>Explore</h3>
          <p>Bridge Loan Services</p>
          <p>
          <?php
                          $args = array(
                            'theme_location' => 'Explore-menu'
                            
                          );
                          wp_nav_menu($args)
                      ?>
          </p>
          
          <!-- <p>New Development</p>
          <p>Market Research</p> -->
          <!-- <p>Bridge Loan Services</p>
          <p>Bridge Loan Services</p>
          <p>Bridge Loan Services</p>
          <p>Bridge Loan Services</p>
          <p>Bridge Loan Services</p> -->

        </div>
        <div class="mobile-items">
          <h3>Mobile Apps</h3>
          <img src="<?php echo get_theme_file_uri('/img/app-icons.png')  ?>"><br>
          <img src="<?php echo get_theme_file_uri('/img/app-icons02.png')  ?>">
          <p>Terms of Service, Privacy Policy, Responsible Disclosure, Notice for California Applicants, and California COVID-19 Rules of Entry <br>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor nibh justo, vel efficitur nibh accumsan vel. Vestibulum nisi lacus, consectetur vel maximus a, scelerisque non neque. Pellentesque ultricies lacinia elit, sit amet mattis lacus gravida et. Sed ac arcu lacus. Sed et nunc sapien. Phasellus et sapien est. Cras pulvinar, leo vel luctus malesuada, erat odio lobortis neque, in malesuada diam justo quis purus. In varius dignissim orci sed bibendum. Cras sit amet sodales orci, dignissim mattis neque. Integer tincidunt dictum neque, quis elementum purus congue sit amet. Maecenas ac varius felis.

            Pellentesque leo est, tincidunt eget sapien at, varius consequat ipsum. Donec sit amet magna vitae metus rutrum porttitor ut eu purus. Nam blandit lacus eu augue scelerisque tempor. Vestibulum sit amet ullamcorper velit. Duis rhoncus dui in ante iaculis, quis sodales mi suscipit. Integer egestas, ligula nec euismod molestie, sem augue posuere dui, a molestie erat nulla at enim. Vivamus mattis venenatis metus nec maximus. Duis ac tellus eget neque fringilla sodales. Praesent blandit congue dolor, sit amet faucibus dolor malesuada ac. Praesent leo nisl, tristique in neque in, vulputate finibus magna. </p>
          <div class="social-items">
            <ul>
              <li>
                <i class="fab fa-facebook-square"></i>
                <i class="fab fa-instagram"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-medium"></i>

              </li>
            </ul>
          </div>

        </div>
      </div>
    </div>



  </footer>
  
</html>


<?php wp_footer(); ?>
</body>
</html>