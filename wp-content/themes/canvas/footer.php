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
	<?php wp_nav_menu( array( 'theme_location' => 'mobile-bar', 'menu_id' => 'mobile-bar' ) ); ?>
</div>

<?php // On smaller devices, the main menu will appear here ?>

<nav id="side-menu">
	<button type="button" class="close-nav pull-right active"><span></span></button>
	<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
</nav>

<?php wp_footer(); ?>

</body>
</html>
