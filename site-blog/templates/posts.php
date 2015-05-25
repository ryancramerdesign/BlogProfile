<?php 

/**
 * Blog posts template
 *
 */

include_once("./blog.inc"); 

if($input->urlSegment1) {
	// check for rss feed
	if($input->urlSegment1 != 'rss') throw new Wire404Exception();
	$homepage = $pages->get('/'); 
	renderRSS($page->children("limit=10"), $homepage->get('headline|title'), $homepage->get('summary|meta_description')); 
	
} else {
	// display paginated blog list
	$headline = $page->get('headline|title');
	$content = renderPosts("limit=10", true); 
	include("./main.inc"); 
}


