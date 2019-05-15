<?php
/**
 * The template for displaying all single posts.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package clientcanvas
 */

get_header(); ?>

<main id="main" class="site-main" role="main">
	<section class="content article">
		<div class="container">
			<div class="featured-image">
				<?php the_post_thumbnail(); ?>
			</div>
			<h1 class="post-title"><?php the_title(); ?></h1>
			<span class="post-date"><?php echo get_the_date(); ?></span>			
			<div class="entry-content">
				<?php the_content(); ?>
				<span class="post-author"><strong>Posted by</strong> Dr. Kaplan</span>	
				<ul class="share-buttons">
				    <li>
				        <a class="share-twitter" href="https://twitter.com/intent/tweet?text=<?php echo $title; ?>&amp;url=<?php echo $url; ?>&amp;via=jkaplanortho" target="_blank">
				            <svg id="twitter" data-name="twitter" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 58.1 47.2">
				                <title>twitter</title>
				                <path d="M54.86,20.19v1.55c0,15.74-12,33.88-33.88,33.88A33.64,33.64,0,0,1,2.74,50.27a24.55,24.55,0,0,0,2.88.15A23.84,23.84,0,0,0,20.4,45.33,11.93,11.93,0,0,1,9.27,37.07a15,15,0,0,0,2.25.18,12.58,12.58,0,0,0,3.13-.41A11.91,11.91,0,0,1,5.1,25.17V25a12,12,0,0,0,5.38,1.51A11.92,11.92,0,0,1,6.8,10.61,33.84,33.84,0,0,0,31.35,23.06a13.44,13.44,0,0,1-.29-2.73,11.92,11.92,0,0,1,20.61-8.15,23.43,23.43,0,0,0,7.56-2.87A11.87,11.87,0,0,1,54,15.88,23.87,23.87,0,0,0,60.84,14,25.59,25.59,0,0,1,54.86,20.19Z" transform="translate(-2.74 -8.42)"/>
				            </svg>
				            <span>Tweet</span>
				        </a>
				    </li>
				    <li>
				        <a class="share-facebook" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $url; ?>" target="_blank">
				            <svg id="facebook" data-name="facebook" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30.61 59.03">
				                <title>facebook</title>
				                <path d="M47.2,12.76H41.63c-4.36,0-5.18,2.09-5.18,5.11v6.71h10.4l-1.38,10.5h-9V62H25.59V35.07h-9V24.57h9V16.84c0-9,5.5-13.87,13.52-13.87a69.4,69.4,0,0,1,8.09.43Z" transform="translate(-16.59 -2.97)"/>
				            </svg>
				            <span>Share</span>
				        </a>
				    </li>
				    <li>
				        <a class="share-googleplus" href="https://plus.google.com/share?url=<?php echo $url; ?>" target="_blank">
				            <svg id="googleplus" data-name="googleplus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 59.45 37.8">
				                <title>googleplus</title>
				                <path d="M21.65,53.45a18.9,18.9,0,0,1,0-37.8,18.05,18.05,0,0,1,12.66,5l-5.13,4.93a10.61,10.61,0,0,0-7.53-2.91,11.94,11.94,0,0,0,0,23.88c7.48,0,10.29-5.39,10.73-8.15H21.65V31.9H39.49A16,16,0,0,1,39.8,35C39.8,45.79,32.55,53.45,21.65,53.45Zm40.51-16.2H56.77v5.39H51.35V37.25H46V31.84h5.39V26.45h5.42v5.39H62.2Z" transform="translate(-2.75 -15.65)"/>
				            </svg>
				            <span>Recommend</span>
				        </a>
				    </li>
				    <li>
				        <a class="share-pinterest" href="http://pinterest.com/pin/create/button/?url=<?php echo $url; ?>&amp;media=<?php echo $media;   ?>&amp;description=<?php echo $title; ?>" target="_blank">
				            <svg id="pinterest" data-name="pinterest" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 61.48 61.48">
				                <title>pinterest</title>
				                <path d="M31.78,63a30.1,30.1,0,0,1-8.73-1.28,25.52,25.52,0,0,0,3.12-6.56s.36-1.36,2.16-8.45c1,2,4.16,3.84,7.48,3.84,9.89,0,16.61-9,16.61-21.09,0-9.09-7.72-17.61-19.49-17.61C18.37,11.83,11,22.32,11,31c0,5.28,2,10,6.28,11.77a1.06,1.06,0,0,0,1.52-.8c.16-.52.48-1.88.64-2.44A1.51,1.51,0,0,0,19,37.85a8.93,8.93,0,0,1-2-6C17,24,22.77,17.07,32.1,17.07c8.24,0,12.81,5,12.81,11.81,0,8.85-3.92,16.33-9.77,16.33a4.76,4.76,0,0,1-4.84-5.92C31.22,35.41,33,31.2,33,28.4c0-2.52-1.36-4.64-4.16-4.64-3.28,0-5.92,3.4-5.92,8a12.81,12.81,0,0,0,1,4.88c-3.36,14.25-4,16.73-4,16.73a26.94,26.94,0,0,0-.52,7.08A30.77,30.77,0,1,1,31.78,63Z" transform="translate(-1.04 -1.5)"/>
				            </svg>
				            <span>Pin</span>
				        </a>
				    </li>
				</ul>
			</div>
			<div class="related-posts">
				<?php $orig_post = $post;
				global $post;
				$categories = get_the_category($post->ID);
				if ($categories) {
				$category_ids = array();
				foreach($categories as $individual_category) $category_ids[] = $individual_category->term_id;

				$args=array(
				'category__in' => $category_ids,
				'post__not_in' => array($post->ID),
				'posts_per_page'=> 3, // Number of related posts that will be shown.
				'caller_get_posts'=>1
				);

				$my_query = new wp_query( $args );
				if( $my_query->have_posts() ) {
				echo '<div id="related_posts"><h3>Also Worth Checking Out</h3><ul class="row">';
				while( $my_query->have_posts() ) {
				$my_query->the_post();?>

				<li class="col-xs-12 col-sm-4"><div class="relatedthumb"><a href="<? the_permalink()?>" rel="bookmark" title="<?php the_title(); ?>"><?php the_post_thumbnail(); ?></a></div>
				<div class="relatedcontent">
					<span class="post-date"><?php the_time('M j, Y') ?></span>
					<h3><a href="<? the_permalink()?>" rel="bookmark" title="<?php the_title(); ?>"><?php the_title(); ?></a></h3>
				</div>
				</li>
				<?
				}
				echo '</ul></div>';
				}
				}
				$post = $orig_post;
				wp_reset_query(); ?>
			</div>
		</div>
	</section>
</main>

<?php
get_footer();