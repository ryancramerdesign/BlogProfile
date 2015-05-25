<?php

/**
 * Render a small list of recent blog posts
 *
 * @param int $limit Number of posts to include (default=3)
 * @return string
 *
 */

include_once('./blog.inc'); 

$limit = $page->quantity; 
$posts = $pages->find("template=post, sort=-date, start=0, limit=$limit");	
$parent = null;
$out = '';

foreach($posts as $item) {
	$date = formatDate($item->date);
	$out .= "<li><span class='date'>$date</span> <a href='{$item->url}'>{$item->title}</a></li>";
	$parent = $item->parent; 
}

if($out) {
	$out = 	"<h4>{$page->title}</h4>" . 
		"<ul class='recent-posts links'>$out</ul>" . 
		"<p>" . 
		"<a class='more' href='{$parent->url}'>" . __('More') . "</a> " . 
		"<a class='rss' href='{$parent->url}rss/'>" . __('RSS') . "</a>" . 
		"</p>";
	echo $out; 
} else {
	echo "<p>No recent posts</p>";
}



