$(document).ready(function() {

	// identify pending and spam comments for admin
	$("#content .CommentStatusPending .CommentHeader").append("<span class='black label'>Pending</span>"); 
	$("#content .CommentStatusSpam .CommentHeader").append("<span class='red label'>SPAM</span>"); 

	// setup any photo galleries
	$gallery = $("#bodycopy ul.gallery"); 
	if($gallery.size() > 0) $gallery.find("a.lightbox").fancybox();

	// mobile navigation
	$("select.nav").change(function() {
		window.location.href = $(this).val();
	}); 

	// Move around navigation and search, depending on whether mobile or desktop
	$(window).resize(function() {
		if($("#topnav").find("form.mobile").is(":visible")) {
			var $subnav = $("#nav #subnav"); 
			if($subnav.size() > 0) {
				$("#sidebar").prepend($subnav); 
				$("#sidebar").append($("#site-search-form")); 
				$("#site-search").prepend($("#topnav")); 
			}
		} else {
			$subnav = $("#sidebar #subnav"); 
			if($subnav.size() > 0) {
				$("#nav").append($subnav); 
				$("#site-search").prepend($("#site-search-form")); 
				$("#nav").prepend($("#topnav")); 	
			}
		}
	}).resize();

}); 

