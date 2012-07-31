<?php 

/**
 * Output a list of comments
 *
 * Used by /site/template/blog.inc (renderComments function)
 *
 * VARIABLES:
 * ==========
 * $page - Page being viewed (Page)
 * $comments - List of comments to render (CommentArray)
 * $nextURL - URL for next pagination, if applicable (string)
 * $prevURL - URL for previous pagination, if applicable (string)
 *
 */

if($page->template == 'post') {
	// if we are viewing a post page, then start with a headline
	echo "<div id='comments'>"; // for jumplinks
	$n = count($comments); 
	if($n) {
		echo "<span class='num-comments-icon'>$n</span>"; 	
		echo "<h4>" . sprintf(_n('Comment', 'Comments', $n), $n) . "</h4>";
	}
}

if(count($comments)) {
	// output the individual comments
	echo "<ul class='comments CommentList'>";
	foreach($comments as $comment) include("./comment.php"); 
	echo "</ul>";
}

if($page->template == 'post') {
	// if we are viewing a post page, then output a comments form
	echo $page->comments->renderForm(array(
		'headline' => '<h4>' . __('Post a comment') . '</h4>', // Post comment headline
		'attrs' => array(),
		'successMessage' => "<div class='alert-box success'>" . __('Thank you, your submission has been saved.') . "</div>",
		'errorMessage' => "<div class='alert-box error'>" . __('Your submission was not saved due to one or more errors. Try again.') . "</div>",
		'redirectAfterPost' => true
		));

	echo "</div><!--/#comments-->";
}

// output pagination if necessary
if($prevURL || $nextURL) {
	echo "<p class='comments-pagination'>";
	if($prevURL) echo "<a class='button button-prev' href='$prevURL'>" . __('Back') . "</a> "; 
	if($nextURL) echo "<a class='button button-next' href='$nextURL'>" . __('Next') . "</a> ";
	echo "</p>";
}

