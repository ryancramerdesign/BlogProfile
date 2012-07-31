<?php 

/**
 * Home template
 *
 */

include("./blog.inc"); 

$categories = $pages->get('/categories/'); 

$content = $page->body . renderPosts("limit={$page->quantity}");
$subnav = renderNav($categories->title, $categories->children); 

include("./main.inc"); 
