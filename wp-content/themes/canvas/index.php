<?php
/**
* @package Canvas
**/
get_header(); ?>

<main id="main" class="site-main" role="main">

	<?php
	if ( have_posts() ) :

		if ( is_home() && ! is_front_page() ) : ?>

		<?php
		endif;

		/* Start the Loop */
		while ( have_posts() ) : the_post();

			get_template_part( 'template-parts/content', get_post_format() );

		endwhile;

		wp_pagenavi();

	else :

		get_template_part( 'template-parts/content', 'none' );

	endif; ?>

</main>

<?php get_sidebar(); ?>
<?php get_footer(); ?>