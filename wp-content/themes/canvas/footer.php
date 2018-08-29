<?php
/**
* @package Canvas
**/
?>

</div>

<footer>
	<div class="wrapper">
		<div class="credits">
			<p class="copy">&copy; <span class="year"></span> <?php echo get_bloginfo('name'); ?>. All Rights Reserved.</p>
			<a class="nc-logo" href="http://www.neoncanvas.com">
				<img src="<?php echo get_stylesheet_directory_uri(); ?>/img/neon-canvas-dark.png" alt="Neon Canvas"/>
			</a>
		</div>
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