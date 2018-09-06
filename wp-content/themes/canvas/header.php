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

	<!-- Font Awesome -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css" />	

<?php wp_head(); ?>

<!--Typekit Script-->
<link rel="stylesheet" href="https://use.typekit.net/bps3zvl.css">

</head>

<body <?php body_class(); ?>>

<header>

	<!-- Logo -->
	<a href="/" class="logo"><?php get_template_part( 'template-parts/logo' ); ?></a>

	<div class="utility-wrapper">
		<ul id="utility-left">
			<li>CALL TODAY | <a href="tel:9012090647"><i class="fa fa-phone" aria-hidden="true"></i> 770.758.5561</a>&nbsp;</li>
		</ul>
		<ul id="utility-right">
			<li><a href="https://twitter.com/jkaplanortho">TWITTER | </a></li>
			<li><a href="https://www.facebook.com/kaplanorthodontics">FACEBOOK | </a></li>
			<li><a href="https://www.instagram.com/kaplanorthodontics">INSTAGRAM | </a></li>
			<li><a href="#">YELP | </a></li>
			<li><a href="#">GOOGLE +</a></li>
		</ul>
	</div>

	<nav id="site-navigation" class="main-navigation" role="navigation">
		<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
	</nav>

	<?php // Mobile menu ?>
	<a class="menu-toggle"><span></span></a>

</header>

<div id="page" class="site">
