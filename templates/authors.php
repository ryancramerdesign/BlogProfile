<?php 

/**
 * Authors template
 *
 */

/**
 * Render an author list
 *
 * @param PageArray $authors
 * @return string
 *
 */
function renderAuthors(PageArray $authors) {
	$out = "<ul class='authors posts-group'>";

	foreach($authors as $author) {
		$numPosts = wire('pages')->count("template=post, created_users_id=$author, limit=2");
		$numPostsStr = sprintf(_n('%d post', '%d posts', $author->numPosts), $author->numPosts);
		// Note: $author->url2 is the blog-generated version, since $author->url is in the admin.
		$out .= "<li><a href='{$author->url2}'>" . $author->get('title|name') . "</a> <span class='num-posts'>$numPosts</span></li>";
	}

	$out .= "</ul>";
	return $out; 
}

/********************************************************/

include_once("./blog.inc"); 

$authorRole = $roles->get('author');
$superuserRole = $roles->get('superuser');
$authors = $users->find("roles=$authorRole|$superuserRole, sort=title"); 
$authorLinks = array();

foreach($authors as $a) {
	// we set a separate URL (url2) to reflect the public url of the author, since
	// the author's $author->url is actually a page in the admin
	$a->url2 = $page->url . $a->name . '/';
	$authorLinks[$a->url2] = $a->get('title|name');
}

if($input->urlSegment1) {
	// author specified: display biography and posts by this author

	$name = $sanitizer->pageName($input->urlSegment1);
	$author = $users->get($name);
	if(!$author->id || (!$author->hasRole($authorRole) && !$author->isSuperuser())) throw new Wire404Exception();

	$posts = $pages->find("template=post, created_users_id=$author, sort=-date, limit=10");
	$authorName = $author->get('title|name'); 

	$t = new TemplateFile($config->paths->templates . "markup/author.php"); 
	$t->set('authorName', $authorName);
	$t->set('authorURL', '');
	$t->set('author', $author); 

	$headline = $page->title;
	$content = $t->render() . renderPosts($posts, true);
	$subnav = renderNav($page->title, $authorLinks, $page->url . $author->name . '/');

} else {
	// no author specified: display list of authors

	$headline = $page->title;
	$content = $page->body . renderAuthors($authors);
}

include("./main.inc"); 
