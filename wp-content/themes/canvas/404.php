<?php
/**
* 404 error page
* @package Canvas
**/
get_header(); ?>

<main id="main" class="site-main" role="main">

	<section class="error-404 not-found">

		<div class="page-content">
			<p><?php esc_html_e( 'It looks like nothing was found at this location. Maybe try one of the links below or a search?', 'canvas' ); ?></p>

			<?php
				get_search_form();

				the_widget( 'WP_Widget_Recent_Posts' );

				// Only show the widget if site has multiple categories.
				if ( canvas_categorized_blog() ) :
			?>

			<div class="widget widget_categories">
				<h2 class="widget-title"><?php esc_html_e( 'Most Used Categories', 'canvas' ); ?></h2>
				<ul>
				<?php
					wp_list_categories( array(
						'orderby'    => 'count',
						'order'      => 'DESC',
						'show_count' => 1,
						'title_li'   => '',
						'number'     => 10,
					) );
				?>
				</ul>
			</div>

			<?php
				endif;

				$archive_content = '<p>' . sprintf( esc_html__( 'Try looking in the monthly archives. %1$s', 'canvas' ), convert_smilies( ':)' ) ) . '</p>';
				the_widget( 'WP_Widget_Archives', 'dropdown=1', "after_title=</h2>$archive_content" );

				the_widget( 'WP_Widget_Tag_Cloud' );
			?>

		</div>
	</section>

</main>

<?php get_footer(); ?>