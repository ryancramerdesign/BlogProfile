<?php

echo "<h4>{$page->title}</h4>";

if(count($page->links)) {

	echo "<ul class='links'>";

	foreach($page->links as $link) {
		echo "<li><a target='_blank' href='{$link->href}'>{$link->headline}</a></li>";		
	}

	echo "</ul>";

} else {
	echo "<p>" . __('No links yet.') . "</p>";
}

