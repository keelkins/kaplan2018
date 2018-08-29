<?php
/**
* Template part for displaying page content in page.php
* @package Canvas
**/
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<div class="entry-header">
		<?php the_title( '<h1>', '</h1>' ); ?>
	</div>

	<div class="entry-content">
		<?php
			the_content();

			wp_link_pages( array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'canvas' ),
				'after'  => '</div>',
			) );
		?>
	</div>

	<?php if ( get_edit_post_link() ) : ?>
		<div class="entry-footer">
			<?php
				edit_post_link(
					sprintf(
						esc_html__( 'Edit %s', 'canvas' ),
						the_title( '<span class="screen-reader-text">"', '"</span>', false )
					),
					'<span class="edit-link">',
					'</span>'
				);
			?>
		</div>
	<?php endif; ?>
	
</article>