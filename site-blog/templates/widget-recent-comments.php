<?php

include_once("./blog.inc");

$url = $config->urls->root . 'comments/';

$out =	"<h4>" . $page->title . "</h4>";

$comments = findRecentComments($page->quantity, 0, false);

if(count($comments)) {

	$out .= "<ul class='links'>";

	foreach($comments as $comment) {

		$cite = htmlentities($comment->cite, ENT_QUOTES, "UTF-8");
		$date = formatDate($comment->created); 

		$out .= "<li><span class='date'>$date</span><br />" . 
			"<a href='{$comment->page->url}#comment{$comment->id}'>$cite &raquo; {$comment->page->title}</a>" . 
			"</li>";
	}

	$out .= "</ul>";


	$out .= "<p>" . 
		"<a class='more' href='$url'>" . __('More') . "</a>  " . 
		"<a class='rss' href='{$url}rss/'>" . __('RSS') . "</a>" . 
		"</p>";

} else {
	$out .= "<p>" . __('No comments yet') . "</p>";
}

echo $out;

