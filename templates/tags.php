<?php 

/**
 * Tags (list) template
 *
 */

/**
 * Render a list of tags
 *
 * As seen on: /tags/
 *
 * @param PageArray $tags
 * @return string
 *
 */
function renderTags(PageArray $tags) {

	foreach($tags as $tag) {
		$tag->numPosts = wire('pages')->count("template=post, tags=$tag");
	}

	$t = new TemplateFile(wire('config')->paths->templates . 'markup/tags.php'); 
	$t->set('tags', $tags); 
	return $t->render();
}

/************************************************/

include_once("./blog.inc"); 
$headline = $page->title; 
$content = $page->body . renderTags($page->children); 
include("./main.inc"); 
