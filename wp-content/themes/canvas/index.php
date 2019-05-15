<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package clientcanvas
 */

get_header(); ?>

<main id="main" class="site-main" role="main">
	<section class="banner">
		<div class="container-fluid">
			<div class="message-wrap">
				<div class="message-content">
					<h1>Our Blog</h1>
					<p>Orthodontic news, tips and happenings to make you smile.</p>
				</div>
			</div>
		</div>
	</section>
	<section class="content">
		<div class="container-fluid">
			<div class="row top-xs">
				<div class="col-xs-12 col-sm-9">
					<div class="row">
						<?php
						if ( have_posts() ) :

							if ( is_home() && ! is_front_page() ) : ?>

							<?php
							endif;

							/* Start the Loop */
							while ( have_posts() ) : the_post();

								get_template_part( 'template-parts/content', get_post_format() );

							endwhile;

						else :

							get_template_part( 'template-parts/content', 'none' );

						endif; ?>
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 sidebar">
					<div class="sidebar-content">
						<?php get_sidebar(); ?>
					</div>
				</div>
			</div>
			<div class="fade-element">
				<?php wp_pagenavi(); ?>
			</div>
		</div>
	</section>
</main>

<?php get_footer(); ?>