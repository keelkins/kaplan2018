<?php
/**
* Template Name: Homepage
* @package Canvas
**/
get_header(); ?>

<main>
  <section class="banner">
  		<div class="banner-message">
  			<h1>This is the Headline</h1>
  			<p>This is the subheadline</p>
        <a href="#" class="btn-hollow">Button</a>
  		</div>
  		<div class="bgvideo">
  			<video width="100%" height="100%" autoplay muted loop playsinline preload="metadata">
            <source src="/wp-content/themes/canvas/img/Header.webmhd.webm" type="video/webm">
            <source src="/wp-content/themes/canvas/img/Header.mp4.mp4" type="video/mp4">
            <source src="/wp-content/themes/canvas/img/Header.oggtheora.ogv" type="video/ogg">
  			</video>
  		</div>
  	</section>
</main>

<?php get_footer(); ?>
