<?php 

/**
 * Recent comments template
 *
 */

include_once("./blog.inc"); 

/**
 * Output an RSS feed of recent comments when URL segment is 'rss'
 *
 */
function renderCommentsRSS($limit) {

	// selector to locate the comments we want
	$start = 0;
	$selector = "limit=$limit, start=$start, sort=-created, status>=" . Comment::statusApproved;

        // find the comments we want to output
        $comments = findComments($selector);

	$commentPages = new PageArray();

	foreach($comments as $comment) {

		$p = wire('pages')->get($comment->pages_id);
		if(!$p->id) continue; 

		$p = clone $p;
		$p->comment_title = htmlentities($comment->cite, ENT_QUOTES, "UTF-8") . " reply to: " . $p->title;	
		$p->comment_body = htmlentities($comment->text, ENT_QUOTES, "UTF-8"); 
		$p->comment_date = $comment->created; 

		$commentPages->add($p);
	}

	$rss = wire('modules')->get('MarkupRSS');
	$rss->title = wire('pages')->get('/')->headline . ' - ' . wire('page')->get('headline|title'); 
	$rss->itemTitleField = 'comment_title';
	$rss->itemDescriptionField = 'comment_body';
	$rss->itemDescriptionLength = 0; 
	$rss->itemDateField = 'comment_date';
	$rss->render($commentPages);
}

/**********************************************************************************/

$limit = $page->quantity; 

if($input->urlSegment1) { 
	// rss feed
	if($input->urlSegment1 != 'rss') throw new Wire404Exception();
	renderCommentsRSS($limit);

} else { 

	$start = ($input->pageNum-1) * $limit; 
	$headline = $page->get('headline|title');
	$content = $page->body . renderComments(findRecentComments($limit, $start), $limit); 

	include("./main.inc"); 
}

