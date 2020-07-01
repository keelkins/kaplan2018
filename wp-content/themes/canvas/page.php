<?php
/**
* Default page template
* @package Canvas
**/
get_header(); ?>

<main id="main" class="site-main" role="main">
	<?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' ); ?>
	<section class="banner" style="background-image: url('<?php echo $image[0]; ?>');">
		<div class="message-wrap">
			<div class="message-wrap-headline">
				<h1><?php the_title(); ?></h1>
			</div>
		</div>
	</section>
	<section id="page-content" class="content fade-element">
		<?php
		while ( have_posts() ) : the_post();

			get_template_part( 'template-parts/content', 'page' );

		endwhile;
		?>
	</section>
</main>

<?php get_footer(); ?>
