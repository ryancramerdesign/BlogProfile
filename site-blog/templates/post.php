<?php 

/**
 * Blog Post template
 *
 */

include_once("./blog.inc"); 

function renderNextPrevPosts($page) {
	$date = $page->getUnformatted('date');
	$nextPost = $page->parent->child("date>$date, sort=date");
	$prevPost = $page->parent->child("date<$date, sort=-date");

	$out = "<div class='next-prev-posts'>"; 
	if($prevPost->id > 0) $out .= "<p class='prev-post'><span>&lt;</span> <a href='{$prevPost->url}'>{$prevPost->title}</a></p>";
	if($nextPost->id > 0) $out .= "<p class='next-post'><a href='{$nextPost->url}'>{$nextPost->title}</a> <span>&gt;</span></p>";
	$out .= "</div>";
	return $out; 
}


// render our blog post and comments
$content = renderPosts($page) . renderComments($page->comments) . renderNextPrevPosts($page); 

// get date info for creating link to archives page in subnav
$date = $page->getUnformatted('date'); 
$year = date('Y', $date); 
$month = date('n', $date); 

// if there are categories and/or tags, then make a separate nav for them
if(count($page->categories)) $subnav .= renderNav(__('Related Categories'), $page->categories); 
if(count($page->tags)) $subnav .= renderNav(__('Related Tags'), $page->tags); 

// subnav contains authors, archives and categories links
$subnavItems = array(
	"{$config->urls->root}authors/{$page->createdUser->name}/" => $page->createdUser->get('title|name'), 
	"{$config->urls->root}archives/$year/$month/" => strftime('%B %Y', $date)
	);

$subnav .= renderNav(__('See Also'), $subnavItems); 

include("./main.inc"); 

