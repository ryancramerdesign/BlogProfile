<?php

// this auto-populates $config->styles and $config->scripts with needed files
$modules->get('JqueryFancybox');

// thumbnail width/height
$twidth = 100;
$theight = 100; 

echo "<ul class='gallery clearfix'>";

foreach($page->images as $image) {
	$thumb = $image->size($twidth, $theight); 
	echo "<li><a href='{$image->url}' rel='gallery' class='lightbox' title='{$image->description}'>"; 
	echo "<img src='{$thumb->url}' alt='{$thumb->description}' width='$twidth' height='$theight' /></a></li>";
}

echo "</ul>";
