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
	<link rel="icon" href="/wp-content/themes/canvas/img/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" sizes="180x180" href="/wp-content/themes/canvas/img/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/wp-content/themes/canvas/img/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/wp-content/themes/canvas/img/favicon-16x16.png">
	<link rel="manifest" href="/wp-content/themes/canvas/img/site.webmanifest">
	<link rel="mask-icon" href="/wp-content/themes/canvas/img/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#2b5797">
	<meta name="theme-color" content="#ffffff">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-99002712-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-99002712-1');
	</script>

	<!-- Animate.css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

	<!-- Schema Markup -->
	<script type='application/ld+json'>
		{
		"@context": "http://www.schema.org",
		"@type": "Dentist",
		"name": "Kaplan Orthodontics",
		"url": "https://jkaplanortho.com/",
		"logo": "http://jkaplanortho.com/wp-content/uploads/2014/04/logo-2016.png",
		"image": "http://jkaplanortho.com/wp-content/uploads/2019/04/Kaplan-Dr-talking-to-patient-2.jpg",
		"description": "We offer custom treatment plans for children, teens and adults. Whatever age you begin treatment, you will get personalized treatment with the best orthodontic technology available.",
		"address": {
			"@type": "PostalAddress",
			"streetAddress": "4700 Chamblee Dunwoody Road",
			"addressLocality": "Dunwoody",
			"addressRegion": "GA",
			"postalCode": "30338",
			"addressCountry": "US"
			},
		"openingHours": "Mo Tu We 7:30-17:00 Th 7:30-16:30 Fr 8:00-12:00",
		"contactPoint": {
			"@type": "contactPoint",
			"contactType": "customer service",
			"telephone": "+17704585561"
			}
		}
	</script>

<?php wp_head(); ?>

<!--Typekit Script-->
<link rel="stylesheet" href="https://use.typekit.net/bps3zvl.css">

</head>

<body <?php body_class(); ?>>

<header>

	<!-- Logo -->
	<a href="/" class="logo">
		<img src="/wp-content/themes/canvas/img/kaplan-logo_update.svg" alt="Kaplan Orthodontics Logo">
	</a>

	<!-- <a href="tel:7704585561" class="mobile-call-btn"><i class="fa fa-phone" aria-hidden="true"></i></a> -->
	<!-- <a href="/get-started" class="mobile-consult-btn arrow-link">Free Consult &rarr;</a> -->

	<div class="utility-wrapper">
		<ul id="utility-left">
			<li>CALL OR TEXT | <a href="tel:7704585561"><i class="fa fa-phone" aria-hidden="true" style="margin:0 5px 0 0;"></i><i class="fa fa-comment" aria-hidden="true"></i>  770.458.5561</a>&nbsp;</li>
		</ul>
		<ul id="utility-right">
			<li><a href="https://www.facebook.com/kaplanorthodontics" target="_blank">FACEBOOK | </a></li>
			<li><a href="https://www.instagram.com/kaplanorthodontics" target="_blank">INSTAGRAM</a></li>
			<!-- <li><a href="http://www.smiledash.com" target="_blank">MY ACCOUNT &amp; APPOINTMENTS</a></li> --> 
		</ul>
	</div>

	<nav id="site-navigation" class="main-navigation" role="navigation">
		<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
	</nav>

	<?php // Mobile menu ?>
	<a class="menu-toggle"><span></span></a>

</header>

<div id="page" class="site">
