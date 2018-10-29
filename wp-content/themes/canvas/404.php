<?php
/**
* 404 error page
* @package Canvas
**/
get_header(); ?>

<div id="primary" class="content-area">
	<main id="main" class="site-main" role="main">
  		<div class="bgvideo">
  			<video width="100%" height="100%" autoplay muted loop playsinline preload="metadata">
            <source src="/wp-content/themes/canvas/img/Header.webmhd.webm" type="video/webm">
            <source src="/wp-content/themes/canvas/img/Header.mp4.mp4" type="video/mp4">
            <source src="/wp-content/themes/canvas/img/Header.oggtheora.ogv" type="video/ogg">
  			</video>
  		</div>
		<section class="not-found">
			<div class="section-wrap center">
				<h2 class="page-title"><?php esc_html_e( 'Oops! Looks like you&rsquo;ve gotten off track.', 'clientcanvas' ); ?></h2>
				<p>Schedule your free consultation today or check out our homepage.</p>
				<a class="btn" href="/schedule-a-free-consultation/">Schedule a Free Consultation</a>
				<a class="btn-hollow" href="/">Go Home</a>
			</div>
		</section><!-- .error-404 -->

	</main><!-- #main -->
</div><!-- #primary -->


<?php get_footer(); ?>