<?php 

/**
 * Category template
 *
 */

include_once("./blog.inc"); 

$posts = $pages->find("template=post, categories=$page, limit=10");

if($input->urlSegment1) {
	// rss feed
	if($input->urlSegment1 != 'rss') throw new Wire404Exception();
	renderRSS($posts); 
	return;
}

$n = $posts->getTotal();
$headline = $page->title;
$content = $page->body . renderPosts($posts, true);
$subnav = renderNav($page->parent->title, $page->siblings, $page); 

include("./main.inc"); 
