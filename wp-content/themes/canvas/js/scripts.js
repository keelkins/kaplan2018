// Window history back
function goBack() {
	window.history.back();
}

// --- Normal functions --- //
jQuery(function() {

	// Toggle mobile menu
	jQuery('.menu-toggle').click(function() {
		jQuery(this).toggleClass('active');
		jQuery('header').toggleClass('mobile');
		jQuery('#side-menu').toggleClass('active');
    jQuery('.mobile-consult-btn').toggleClass('active');
	});

	// Video player
	jQuery('.play').click(function() {
		jQuery(this).siblings('video').addClass('fade');
		jQuery(this).parent().addClass('fade');
	});

  /* Hide UserWay accessibility icon on init */
  document.addEventListener("userway:init_completed", function(event) {
    var instance = event.detail.userWayInstance;
    instance.iconVisibilityOff();
  });
  /* Opens Userway widget on click */
  document.querySelector('.open-userway').addEventListener('click', function(e) {
  UserWay.widgetOpen();
  });

    // Get current year for footer copyright
	var currentYear = (new Date()).getFullYear();
	jQuery('footer span.year').text(currentYear);
});

// --- Scroll functions --- //
var position = jQuery(window).scrollTop();
jQuery(window).scroll(function () {
});

// Add in Expand Toggle to Nav Items With Children
jQuery('#side-menu #primary-menu li').each(function() {
  if (jQuery(this).children('ul').size() >= 1) {
      jQuery(this).addClass('hasChild');
      jQuery(this).append('<a class="expand"></a>');
  }
});

// Show Child Pages When Toggle is Clicked
jQuery('#side-menu .expand').click(function() {
  jQuery(this).parent().children('ul').toggleClass('active');
  jQuery(this).toggleClass('active');
});

jQuery(window).scroll(function() {
    var scroll = jQuery(window).scrollTop();

    if (scroll >= 250) {
        jQuery("header, .logo, #primary-menu").addClass("active");
    } else {
        jQuery("header, .logo, #primary-menu").removeClass("active");
    }
});

// Make Entire Div Clickable 

jQuery(".blog article").click(function() {
  window.location = jQuery(this).find("a").attr("href"); 
  return false;
});


// Rellax Scroll
var rellax = new Rellax('.rellax');

// Add SMS to Menu Item

jQuery(window).load(function(){
  jQuery('#menu-item-3071 a').attr('href','sms:+370123123');
});