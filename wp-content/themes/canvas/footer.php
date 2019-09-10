<?php
/**
* @package Canvas
**/
?>

</div>

<footer>
	<div class="instagram-feed">
		<div class="section-intro">
			<img src="/wp-content/themes/canvas/img/zig-zag.svg" alt="zig-zag icon" class="intro-icon">
			<h2>Follow Us</h2>
		</div>
		<?php echo do_shortcode("[elfsight_instagram_feed id='1']"); ?>
	</div>
	<div class="wrapper">
		<div class="row">
			<div class="col-xs-12 col-sm-3">
				<img src="/wp-content/themes/canvas/img/logo-reverse.svg" alt="Kaplan Orthodontics Logo">
				<p><span>Ready to Get Started? </span>Enter your information and we will call to schedule a complimentary consultation today.</p>
			</div>
			<div class="col-xs-12 col-sm-9">
				<?php echo do_shortcode('[gravityform id="1" title="false" description="false"]'); ?>
			</div>
		</div>
	</div>
	<div class="credits">
		<p class="copy">&copy; <span class="year"></span> <?php echo get_bloginfo('name'); ?>. All Rights Reserved. | Site by <a href="https://neoncanvas.com">Neon Canvas</a></p>
	</div>
</footer>

<?php // Mobile bar (if you want a convenient way for users to navigate on smaller devices) ?>
<div class="mobile-bar">
	<ul id="mobile-bar" class="menu">
		<li id="menu-item-3067" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3067">
			<a href="https://jkaplanortho.com/get-started/">Free Consult</a>
		</li>
		<li id="menu-item-3068" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3068">
			<a href="tel:770-458-5561"><i class="fa fa-phone" aria-hidden="true"></i></a>
		</li>
		<li id="menu-item-3071" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3071">
			<a href="sms:770-458-5561"><i class="fa fa-comment" aria-hidden="true"></i></a>
		</li>
	</ul>
</div>

<?php // On smaller devices, the main menu will appear here ?>

<nav id="side-menu">
	<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
	<ul id="mobile-utility">
		<li><a href="https://www.facebook.com/kaplanorthodontics">FACEBOOK</a></li>
		<li><a href="https://www.instagram.com/kaplanorthodontics">INSTAGRAM</a></li>
		<li><a href="http://www.smiledash.com" target="_blank">MY ACCOUNT &amp; APPOINTMENTS</a></li> 
	</ul>
</nav>

<?php wp_footer(); ?>

</body>
</html>
