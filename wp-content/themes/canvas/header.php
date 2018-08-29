<?php
/**
* @package Canvas
**/
?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">

	<?php // Favicons/application icons ?>
	<link rel="icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" sizes="180x180" href="<?php echo get_stylesheet_directory_uri(); ?>/favicons/apple-touch-icon.png">
	<link rel="icon" type="image/png" href="<?php echo get_stylesheet_directory_uri(); ?>/favicons/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="<?php echo get_stylesheet_directory_uri(); ?>/favicons/favicon-16x16.png" sizes="16x16">
	<link rel="manifest" href="<?php echo get_stylesheet_directory_uri(); ?>/favicons/manifest.json">
	<link rel="mask-icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicons/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="theme-color" content="#0e958b">

<?php wp_head(); ?>

<!--Typekit Script-->
<link rel="stylesheet" href="https://use.typekit.net/bps3zvl.css">

</head>

<body <?php body_class(); ?>>

<header class="top">

	<!-- Logo -->
	<a href="/" class="logo"><?php get_template_part( 'template-parts/logo' ); ?></a>

	<ul id="utility">
		<li class="locations">
			<a href="/contact">
				<i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp; LOCATION <span class="chevron down"></span>
			</a>
			<?php get_template_part( 'template-parts/locations-nav', 'none' ); ?>
		</li>
		<li>CALL TODAY | <a href="tel:9012090647"><i class="fa fa-phone" aria-hidden="true"></i> 770.758.5561</a>&nbsp;</li>
		<li><a onclick="window.open ('https://www.facebook.com/kaplanorthodontics', ''); return false" href="javascript:void(0);" href="https://www.facebook.com/kaplanorthodontics">FACEBOOK</a></li>
		<li><a onclick="window.open ('https://www.instagram.com/kaplanorthodontics', ''); return false" href="javascript:void(0);" href="https://www.instagram.com/kaplanorthodontics">INSTAGRAM</a></li>
		<li><a onclick="window.open ('https://twitter.com/jkaplanortho', ''); return false" href="javascript:void(0);" href="https://twitter.com/jkaplanortho">TWITTER</a></li>
	</ul>

	<?php // Navigation ?>
	<nav id="site-navigation" class="main-navigation" role="navigation">
		<ul id="primary-menu" class="menu">
			<li id="menu-item-39" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-39">
				<a href="/about-us/meet-the-doctor">About Us</a>
				<ul class="sub-menu sub-menu__about">
					<li>
						<div class="menu-row">
							<div class="col-50 about-col doc-col">
								<a href="/about-us/meet-the-doctor" class="main-nav-item">
									<div class="about-image doc-image"></div>
									<div class="about-text-wrap">
										<span>Meet Dr. Kaplan</span>
										<p>Fun, Friendly, Professional.</p>
									</div>
								</a>
							</div>
							<div class="col-50 about-col team-col">
								<a href="/about-us/meet-the-team/" class="main-nav-item">
									<div class="about-image team-image"></div>
									<div class="about-text-wrap">
										<span>Meet the Team</span>
										<p>Energetic, Helpful, Kind.</p>
									</div>
								</a>
							</div>
						</div>
						<div class="about-locations border-top-grey">
							<a href="/about-us/tour-our-office/" class="main-nav-item">Tour Our Offices</a>
							<div class="child-nav text-align-center">
								<a href="/about-us/midtown/" class="child-nav-item"><i class="fa fa-map-marker" aria-hidden="true"></i> Midtown</a>
								<a href="/about-us/germantown/" class="child-nav-item"><i class="fa fa-map-marker" aria-hidden="true"></i> Germantown</a>
								<a href="/about-us/collierville/" class="child-nav-item"><i class="fa fa-map-marker" aria-hidden="true"></i> Collierville</a>
							</div>
						</div>
						<div class="about-map border-top-grey">
							<a href="/about-us/map-and-directions/" class="main-nav-item"><i class="fa fa-map-o" aria-hidden="true"></i> Map &amp; Directions</a>
						</div>
					</li>
				</ul>
			</li>
			<li id="menu-item-15" class="has-mega-menu menu-item menu-item-type-post_type menu-item-object-page menu-item-15">
				<a href="/what-makes-us-different">Why Choose Us?</a>
				<ul class="sub-menu sub-menu__why-choose-us">
					<li>
						<div class="menu-row">
							<div class="col-50 border-right-grey">
								<a href="/what-makes-us-different" class="main-nav-item"><span><div class="nav-icon"><img src="/wp-content/themes/canvas/img/heart-icon-sml.svg" alt="heart icon"></div> What Makes Us Different?</span></a>
								<a href="/why-choose-us/before-and-afters" class="main-nav-item"><span><div class="nav-icon"><img src="/wp-content/themes/canvas/img/smile-icon-sml.svg" alt="smile icon"></div> Before &amp; Afters</span></a>
								<a href="/why-choose-us/reviews-and-testimonials/" class="main-nav-item"><span><div class="nav-icon"><img src="/wp-content/themes/canvas/img/testimonial-icon-sml.svg" alt="testimonial icon"></div> Reviews &amp; Testimonials</span></a>
							</div>
							<div class="col-50 border-radius-top-right border-radius-bottom-right overflow-hidden why-choose-us-video">
								<a href="https://www.youtube.com/watch?v=gc967S1xbbA?autoplay=1&rel=0&showinfo=0"" class="mfp-iframe play-btn">
									<div class="play-btn">
										<i class="fa fa-play" aria-hidden="true"></i>
										<span>Watch Video</span>
									</div>
								</a>
							</div>
						</div>
					</li>
				</ul>
			</li>
			<li id="menu-item-14" class="has-mega-menu menu-item menu-item-type-post_type menu-item-object-page menu-item-14">
				<a href="/treatments/">Treatments</a>
				<ul class="sub-menu sub-menu__treatments">
					<li>
						<div class="menu-row">
							<div class="col-33 col-padding treatments-col types-col">
								<div class="treatments-wrapper">
									<a href="/treatments/" class="main-nav-item">Types of Treatment</a>
									<div class="child-nav">
										<a href="/treatments/metal-braces/" class="child-nav-item">Metal Braces</a>
										<a href="/treatments/ceramic-braces/" class="child-nav-item">Ceramic Braces</a>
										<a href="/treatments/invisalign/" class="child-nav-item">Invisalign</a>
										<a href="/treatments/invisalign-teen/" class="child-nav-item">Invisalign Teen</a>
									</div>
								</div>
							</div>
							<div class="col-33 col-padding treatments-col ages-col">
								<div class="treatments-wrapper">
									<a href="/all-ages-accepted/" class="main-nav-item">All Ages Accepted</a>
									<div class="child-nav">
										<a href="/all-ages-accepted/children/" class="child-nav-item">Children</a>
										<a href="/all-ages-accepted/teens/" class="child-nav-item">Teens</a>
										<a href="/all-ages-accepted/adults/" class="child-nav-item">Adults</a>
									</div>
								</div>
							</div>
							<div class="col-33 col-padding treatments-col life-col">
								<div class="treatments-wrapper">
									<a href="/life-with-braces/" class="main-nav-item">Life With Braces</a>
									<div class="child-nav">
										<a href="/life-with-braces/caring-for-braces/" class="child-nav-item">Caring For Braces</a>
										<a href="/life-with-braces/braces-emergencies/" class="child-nav-item">Braces Emergencies</a>
										<a href="/life-with-braces/faqs/" class="child-nav-item">FAQs</a>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</li>
			<li id="menu-item-26" class="has-mega-menu menu-item menu-item-type-post_type menu-item-object-page menu-item-26">
				<a href="/get-started/schedule-free-consult/">Get Started</a>
				<ul class="sub-menu sub-menu__get-started">
					<li class="top-wrapper">
						<div class="col-padding">
							<div class="col-20">
								<a href="/get-started/schedule-free-consult/"><span>Schedule a Free Consult</span></a>
							</div>
							<div class="col-20">
								<a href="/get-started/first-orthodontic-visit/"><span>Your First Visit</span></a>
							</div>
							<div class="col-20">
								<a href="/get-started/insurance-and-finances/"><span>Insurance &amp; Finances</span></a>
							</div>
							<div class="col-20">
								<a href="/get-started/contact-us/"><span>Contact Us</span></a>
							</div>
						</div>
					</li>
					<li class="bottom-wrapper">
						<a href="/get-started/doctor-referral/"><span><img src="/wp-content/themes/canvas/img/referral-icon.svg" alt="referral icon">Doctors Only: Refer a Patient</span></a></li>
					</li>
				</ul>
			</li>
			<li id="menu-item-17" class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-17">
				<a href="/blog/">Blog</a>
				<ul class="sub-menu sub-menu__blog">
					<li class="recent-post">
							<div class="post-tag">Recent</div>
							<div class="recent-post-wrapper">
								<?php $the_query = new WP_Query( 'posts_per_page=1' ); ?>
								<?php while ($the_query -> have_posts()) : $the_query -> the_post(); ?>
								<a href="<?php the_permalink() ?>">
									<div class="featured-image"><?php the_post_thumbnail('thumb'); ?></div>
									<h3 class="post-title"><?php the_title(); ?></h3>
								</a>
								<?php
								endwhile;
								wp_reset_postdata();
								?>
							</div>
					</li>
					<li class="popular-posts">
						<div class="popular-tag">Featured</div>
						<a href="/how-much-do-braces-cost" alt="How much do braces cost">How Much do Braces Cost?</a>
						<a href="/abcs-of-braces-all-you-need-to-know-before-starting-treatment/" alt="ABC's of Braces">ABC's of Braces</a>
						<a href="/what-can-i-eat-with-braces/" alt="What Can I Eat with Braces?">What Can I Eat with Braces?</a>
					</li>
				</ul>
			</li>
			<li id="menu-item-18" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-18">
				<a href="/get-started/schedule-free-consult/">Free Consult</a>
			</li>
		</ul>
		<div class="menu-main-navigation-container"></div>
	</nav>

	<?php // Mobile menu ?>
	<a class="menu-toggle"><span></span></a>

</header>

<div id="page" class="site">
