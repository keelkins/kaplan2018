<?php
/**
* Template part for displaying posts
* @package Canvas
**/
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<div class="entry-header">
		<?php
		if ( is_single() ) :
			the_title( '<h1>', '</h1>' );
		else :
			the_title( '<h2><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		endif;

		if ( 'post' === get_post_type() ) : ?>
		<div class="entry-meta">
			<span class="date"><?php the_date(); ?></span>
			<span class="author"><?php the_author(); ?></span>
		</div>
		<?php
		endif; ?>
	</div>

	<div class="entry-content">
		<?php
			the_content( sprintf(
				wp_kses( __( 'Continue reading %s <span class="meta-nav">&rarr;</span>', 'canvas' ), array( 'span' => array( 'class' => array() ) ) ),
				the_title( '<span class="screen-reader-text">"', '"</span>', false )
			) );

			wp_link_pages( array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'canvas' ),
				'after'  => '</div>',
			) );
		?>
	</div>

	<div class="entry-footer">
		<?php canvas_entry_footer(); ?>
	</div>

</article>