<?php

/**
 * Tag template, very similar to the category template
 *
 */

include_once("./blog.inc"); 

$posts = $pages->find("tags=$page, limit=10");

if($input->urlSegment1) {
	// rss feed
	if($input->urlSegment1 != 'rss') throw new Wire404Exception();
	renderRSS($posts); 
	return;
}

$n = $posts->getTotal();
$headline = $page->get('headline|title');
$content = $page->body . renderPosts($posts, true);

include("./main.inc");
