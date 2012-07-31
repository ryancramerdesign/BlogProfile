<?php

/**
 * Output a single blog post 
 *
 * Used by /site/templates/markup/posts.php (via include)
 *
 * VARIABLES:
 * ==========
 * $page - the blog post to render (Page)
 * $small - whether to display it in a small/summarized format (boolean)
 *
 */

$numComments = $page->comments->count();
if($numComments > 0) $numCommentsStr = sprintf(_n('%d Comment', '%d Comments', $numComments), $numComments);
	else $numCommentsStr = __('No comments yet'); 

?>
<div class='post' id='post-<?php echo $page->id; ?>'>

	<div class='post-head'>

		<?php 
		echo "<a class='num-comments-icon' href='{$page->url}#comments' title='$numCommentsStr'>$numComments</a> ";
		// headline
		$h = $small ? 'h4' : 'h2';
		echo "<$h class='post-headline'><a href='{$page->url}'>{$page->title}</a></$h>";
		?>

		<p class='post-byline'><?php 
			// meta/byline
			echo "<span class='author'>" . sprintf(__('Posted by %s'), "<a href='{$page->authorURL}'>{$page->authorName}</a></span>, ");
			echo "<span class='date'>{$page->date}</span> ";
			if($page->editable()) echo "<span class='edit'>(<a href='" . wire('config')->urls->admin . "page/edit/?id={$page->id}'>" . __('edit') . "</a>)</span>";
		?></p>
	</div>

	<div class='post-body'>

		<?php 
		if($small) {
			echo "<p>" . $page->summary . "&hellip; <a class='more' href='{$page->url}'>" . __('View More') . "</a></p>";
		} else {
			echo $page->body; 
			// if the post has images and no <img> tags in the body, then make it a gallery
			if(count($page->images) && strpos($page->body, '<img ') === false) include("./gallery.php"); 
		}
		?>

	</div>

	<div class='post-foot'>

		<?php

		if(!$small) {
			// display categories & tags when doing large posts
			$out = '';
			if(count($page->categories)) {
				$out = "<p class='categories'><span>" . __('Categories:') . '</span> ';
				foreach($page->categories as $category) {
					$out .= "<a href='{$category->url}'>{$category->title}</a>, ";	
				}
				echo rtrim($out, ", ") . "</p> ";
			}

			if(count($page->tags)) {
				$out = "<p class='tags'><span>" . __('Tags:') . '</span> '; 
				foreach($page->tags as $tag) {
					$out .= "<a href='{$tag->url}'>{$tag->title}</a>, ";
				}
				echo rtrim($out, ", ") . "</p> ";
			}

			echo "<p class='num-comments'><span>" . __('Comments:') . "</span> <a href='{$page->url}#comments'>$numCommentsStr</a></p> ";
		}

		?>
		
	</div>

</div>

