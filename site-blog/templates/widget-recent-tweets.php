<?php

/**
 * Render a small list of recent tweets 
 *
 */

$t = wire('modules')->get('MarkupTwitterFeed');
$t->limit = $page->quantity;
$t->cacheSeconds = 3600;
$t->dateFormat = wire('fields')->get('date')->dateOutputFormat;
$t->showHashTags = true; 
$t->showName = false;
$t->showDate = 'before';
$t->listOpen = "<ul class='MarkupTwitterFeed links'>";
$t->listItemDateOpen = "<span class='date'>";
$t->listItemDateClose = "</span><br />";

$twitterName = $page->note; 

echo "<h4 class='twitter-headline'>" . __('Recent Tweets') . "</h4>"; 
echo $t->render("http://api.twitter.com/1/statuses/user_timeline.rss?screen_name=$twitterName");
echo "<p><a class='more more-twitter' href='http://twitter.com/$twitterName/'>" . __('More') . "</a></p>"; 

