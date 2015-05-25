<?php 

/**
 * Archives template
 *
 */

/**
 * Get an array of archives, optionally by year and optionally including a few posts
 *
 * @param int $year Retrieve archives for a specific year (default=retrieve all years)
 * @param int $limit Max number of posts to show for each month, default=0 which means don't show any
 * @return array() in this format:
 *
 * array(
 * 	2012 => array( // year 2012
 *		1 => array( // month 1: January
 * 			'name' => 'January', 
 *			'url' => '/archives/2012/01/',
 *			'posts' => PageArray, // containing first few posts
 *			'total' => 5 // total # of posts in month
 *		),
 *		2 => array( // Month 2: February
 *			'name' => 'February',
 *			...and so on
 *		),
 *		...and so on
 * 	),
 * 
 * 	2011 => array( ... ), // year 2011
 *	...and so on
 * );
 *
 */
function getArchives($year = 0, $limit = 0) {

	if($year) {
		$firstYear = $year;
		$lastYear = $year;
	} else {
		$oldest = wire('pages')->get("template=post, date>0, sort=date");
		$newest = wire('pages')->get("template=post, date>0, sort=-date");
		if(!$newest->id) return '';
		$firstYear = date('Y', $oldest->getUnformatted('date'));
		$lastYear = date('Y', $newest->getUnformatted('date'));
	}

	$_limit = $limit > 1 ? (int) $limit : 2; 
	$years = array();

	for($y = $lastYear; $y >= $firstYear; $y--) {

		$months = array();
		$numPostsYear = 0;

		for($month = 1; $month <= 12; $month++) {

			$firstDay = strtotime("$y-$month-01");
			$lastDay = strtotime("+1 month", $firstDay)-1;

			$posts = wire('pages')->find("template=post, date>=$firstDay, date<=$lastDay, limit=$_limit, sort=-date");
			$numPosts = $posts->getTotal();
			if(!$numPosts) continue; 
			$numPostsYear += $numPosts;

			$months[$month] = array(
				'url' => wire('config')->urls->root . "archives/$y/$month/",
				'name' => strftime('%B', $firstDay),
				'posts' => $limit > 0 ? $posts : array(),
				'total' => $numPosts
				);
		}

		if(!$numPostsYear) continue; 

		$years[$y] = array(
			'url' => wire('config')->urls->root . "archives/$y/", 
			'name' => $y,
			'total' => $numPostsYear,
			'months' => $months
			);
	}

	return $years; 
}

/**
 * Render archives returned by the getArchives() function
 *
 * Archives links include a year headline followed by a list of months in that year with posts,
 * and the number of posts in each month. 
 *
 * @param array $years as returned by the getArchives() function
 * @return string
 *
 */
function renderArchives(array $years) {
	$out = '';

	foreach($years as $year) {
		$t = new TemplateFile(wire('config')->paths->templates . 'markup/archives.php'); 
		$t->set('year', $year['name']); 
		$t->set('total', $year['total']); 
		$t->set('months', $year['months']); 
		$t->set('url', $year['url']); 
		$out .= $t->render();
	}

	return $out; 
}

/*******************************************************************/

include_once("./blog.inc");

if($input->urlSegment1 && $input->urlSegment2) {
	// year and month
	$year = (int) $input->urlSegment1; 
	$month = (int) $input->urlSegment2; 
	$firstDate = strtotime("$year-$month-01");
	$lastDate = strtotime("+1 month", $firstDate);
	$selector = "template=post, date>=$firstDate, date<$lastDate, sort=-date";
	$posts = $pages->find($selector);
	$headline = strftime("%B %Y", $firstDate);
	$content = renderPosts($posts, true);

	$archives = getArchives();
	$yearsNav = array();
	$monthsNav = array();

	foreach($archives as $y) {
		$yearsNav[$y['url']] = $y['name'];
		if($y['name'] == $year) {
			foreach($y['months'] as $m) $monthsNav[$m['url']] = $m['name'];
		}
	}

	$subnav = renderNav($page->title, $yearsNav, $page->url . "$year/") . renderNav($year, $monthsNav, $page->url . "$year/$month/");

} else if($input->urlSegment1) {
	// year
	$year = (int) $input->urlSegment1; 
	$headline = $page->title;
	$archives = getArchives();
	$yearsNav = '';
	foreach($archives as $key => $y) {
		$yearsNav[$y['url']] = $y['name']; 
		if($key != $year) unset($archives[$key]); 
	}
	$subnav = renderNav($page->title, $yearsNav, $page->url . "$year/"); 
	$content = renderArchives($archives); 

} else {
	// root, no date specified
	$headline = $page->title;
	$content = $page->body . renderArchives(getArchives()); 
}

include("./main.inc"); 
