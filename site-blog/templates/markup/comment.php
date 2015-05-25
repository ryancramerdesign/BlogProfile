<?php

/**
 * Output a single comment
 *
 * Used by /site/templates/blog.inc (renderComments function)
 *
 * VARIABLES:
 * ==========
 * $page - The Page being viewed
 * $comment - The comment to render
 *
 */

?>

<li class='comment CommentListItem' id='comment<?php echo $comment->id; ?>'>

	<p class='comment-head CommentHeader'><?php

		$cite = htmlentities($comment->cite, ENT_QUOTES, "UTF-8"); 
		$website = htmlentities($comment->website, ENT_QUOTES, "UTF-8");
		if($website) $cite = "<a href='$website' rel='nofollow' target='_blank'>$cite</a>";

		if($page->template == 'post') {
			echo sprintf(__('Comment by %1$s on %2$s'), $cite, $comment->date); 
		} else {
			echo "<a href='{$comment->page->url}#comment{$comment->id}'>";
			echo sprintf(__('%1$s replied to %2$s on %3$s'), $cite, $comment->page->title, $comment->date); 
			echo "</a>";
		}

		if($comment->status == Comment::statusPending) {
			echo " <span class='comment-status-pending'>" . __('PENDING') . "</span>";
		} else if($comment->status == Comment::statusSpam) {
			echo " <span class='comment-status-spam'>" . __('SPAM') . "</span>";
		}
	
	?></p>

	<div class='comment-body CommentText'>
		<?php
		$text = htmlentities($comment->text, ENT_QUOTES, "UTF-8"); 
		$text = str_replace("\n\n", "</p><p>", $text);
		$text = str_replace("\n", "<br />", $text);
		echo "<p>$text</p>";	
		?>
	</div>

</li>

