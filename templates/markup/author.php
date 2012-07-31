<?php

/**
 * Render an author biography
 *
 * Used by the /site/templates/authors.php template. 
 *
 * Receives the following variables:
 * 1. $author - The author to output (Page)
 * 2. $authorURL - The URL to the author's page, or blank if already there (string)
 * 3. $authorName - The author's display name (string) 
 *
 */

$image = $author->images->first();
if($image) {
	$thumb = $image->width(100); 	
	$photo = "<a class='lightbox' title='$authorName'><img class='author-photo' src='{$thumb->url}' alt='{$thumb->description}' width='100' height='{$thumb->height}' /></a>";
} else {
	$photo = '';
}

if($authorURL) $authorName = "<a href='$authorURL'>$authorName</a>";

?>

<div class='author-bio clearfix'>
	<h3 class='author-name'><?php echo $authorName; ?></h3>
	<?php echo $photo . $author->body; ?>
</div>


