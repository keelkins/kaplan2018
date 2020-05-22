<?php
/**
* Template Name: No Header
* @package Canvas
**/
get_header(); ?>

<main id="main" class="site-main" role="main">
	<section class="content">
		<div class="flex-row">
			<div class="col-left">
				<div class="container">
					<?php
				while ( have_posts() ) : the_post();

					get_template_part( 'template-parts/content', 'page' );

					// If comments are open or we have at least one comment, load up the comment template.
					if ( comments_open() || get_comments_number() ) :
						comments_template();
					endif;

				endwhile;
				?>
				</div>
			</div>
		</div>
	</section>

</main>

<?php get_footer(); ?>
