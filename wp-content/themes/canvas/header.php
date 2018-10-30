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

	<!-- Ortho Chat Script -->
	<script type="text/javascript">
	  var __lc = {};
	  __lc.license = 7036871;

	  (function() {
	    var lc = document.createElement('script'); lc.type = 'text/javascript'; lc.async = true;
	    lc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.livechatinc.com/tracking.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(lc, s);
	  })();
	</script>	

	<!-- Animate.css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

<?php wp_head(); ?>

<!--Typekit Script-->
<link rel="stylesheet" href="https://use.typekit.net/bps3zvl.css">

</head>

<body <?php body_class(); ?>>

<header>

	<!-- Logo -->
	<a href="/" class="logo"><?php get_template_part( 'template-parts/logo' ); ?></a>

	<a href="tel:7704585561" class="mobile-call-btn"><i class="fa fa-phone" aria-hidden="true"></i></a>
	<a href="/get-started" class="mobile-consult-btn arrow-link">Free Consult &rarr;</a>

	<div class="utility-wrapper">
		<ul id="utility-left">
			<li>CALL TODAY | <a href="tel:7704585561"><i class="fa fa-phone" aria-hidden="true"></i> 770.458.5561</a>&nbsp;</li>
		</ul>
		<ul id="utility-right">
			<li><a href="https://www.facebook.com/kaplanorthodontics" target="_blank">FACEBOOK | </a></li>
			<li><a href="https://www.instagram.com/kaplanorthodontics" target="_blank">INSTAGRAM | </a></li>
			<li><a href="http://www.smiledash.com" target="_blank">MY ACCOUNT &amp; APPOINTMENTS</a></li> 
		</ul>
	</div>

	<nav id="site-navigation" class="main-navigation" role="navigation">
		<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
	</nav>

	<?php // Mobile menu ?>
	<a class="menu-toggle"><span></span></a>

</header>

<div id="page" class="site">
