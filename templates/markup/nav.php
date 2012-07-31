<?php

/**
 * Nav markup
 *
 * Used by /site/templates/blog.inc (renderNav function)
 *
 */

if($headline) echo "<h4 class='nav-headline'>$headline</h4>"; 

?>

<ul class='nav links no-mobile'><?php 
	foreach($items as $url => $title) {
		if($url == $currentURL) {
			echo "<li class='on'><a class='on' href='$url'>$title</a></li>";
		} else {
			echo "<li><a href='$url'>$title</a></li>";
		}
	}
?></ul>

<form class='mobile'>
	<select class='nav'><option value='./'></option><?php
	foreach($items as $url => $title) {
		$selected = $url == $currentURL ? " selected='selected'" : '';
		echo "<option$selected value='$url'>$title</option>";
	}
	?></select>
</form>

