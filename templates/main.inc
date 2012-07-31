<?php

/**
 * The main HTML/markup wrapper file for the blog templates
 *
 */

// We pull some data from the homepage in a few places in this main template, so we keep it ready here
$homepage = $pages->get('/');

if(empty($content)) $content = $page->body;

// determine what the ever important browser <title> tag should be
if($page->browser_title) $browserTitle = $page->browser_title; 
	else if($page === $homepage) $browserTitle = $page->headline; 
	else $browserTitle = $page->title . ' &bull; ' . $homepage->headline; 

// add our stylesheets
$config->styles->add($config->urls->templates . 'skeleton/stylesheets/base.css'); 
$config->styles->add($config->urls->templates . 'skeleton/stylesheets/skeleton.css'); 
$config->styles->add($config->urls->templates . 'skeleton/stylesheets/layout.css'); 
$config->styles->add($config->urls->templates . 'styles/main.css'); 
$config->styles->add($config->urls->templates . 'styles/theme.css'); 

// add our javascripts
$config->scripts->prepend('http://code.jquery.com/jquery-1.7.2.min.js');
$config->scripts->add($config->urls->templates . 'scripts/main.js'); 

?><!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<title><?php echo $browserTitle; ?></title>

	<?php if($page->summary) echo "<meta name='description' content='{$page->summary}' />"; ?>

	<?php foreach($config->styles as $key => $file) echo "\n\t<link rel='stylesheet' type='text/css' href='$file'>"; ?>

	<?php foreach($config->scripts as $file) echo "<script src='$file'></script>"; ?>

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

</head>
<body class='template-<?php echo $page->template; ?>'>

	<div id="wrap-masthead">
		<div class="container">
			<div id="masthead" class="sixteen columns">

				<div id="site-headline" class="twelve columns alpha">

					<?php echo "<a href='{$config->urls->root}'><h1>{$homepage->headline}</h1></a>"; ?>

					<?php if($homepage->summary) echo "<h5>{$homepage->summary}</h5>"; ?>
				</div>

				<div id="site-search" class="four columns omega">

					<?php
					$searchPage = wire('pages')->get('template=search');
					$searchQuery = htmlentities(wire('input')->whitelist('q'), ENT_QUOTES, "UTF-8");
					?>

					<form id='site-search-form' class='clearfix' action='<?php echo $searchPage->url; ?>' method='get'>
						<input type='text' name='q' value='<?php echo $searchQuery; ?>' placeholder='<?php echo $searchPage->title; ?>'>
					</form>
				</div>
			</div><!--/#wmasthead-->
		</div><!--/.container-->
	</div><!--/#wrap-masthead-->

	<div id="wrap-content">
		<div class="container">

			<div id="content" class="sixteen columns">


				<!-- LEFT COLUMN: #nav -->

				<div class="three columns alpha">

					<div id="nav">

						<div id='topnav'>

							<?php echo renderNav('', $homepage->children->prepend($homepage), $page); ?>

						</div><!--/#topnav-->

						<div id='subnav'>

							<?php
							if($page->editable()) include("./markup/admin.php"); // show an admin widget with edit+new links
							echo $subnav; 
							?>

						</div><!--/#nav-->

					</div><!--/#nav-->

				</div><!--/.three.columns-->


				<!-- CENTER COLUMN: #bodycopy -->

				<div class="nine columns">

					<div id="bodycopy">

						<?php 
						if($headline) echo "<h2>$headline</h2>"; 
						echo $content;
						?>

					</div><!--/#bodycopy-->

				</div><!--/.nine.columns-->



				<!-- RIGHT COLUMN: #sidebar -->

				<div class="four columns omega">			

					<div id="sidebar">

						<div class='widgets'><?php

							// render widgets
							$widgets = $page->widgets; 
							if(!$widgets || !count($widgets)) $widgets = $homepage->widgets; 
							foreach($widgets as $widget) {
								echo "<div class='widget'>" . $widget->render() . "</div>";
							}

						?></div>

					</div><!--/#sidebar-->

				</div><!--/.four.columns-->

			</div><!--/#content-->
		</div><!--/.container-->
	</div><!--/#wrap-content-->

	<div id="wrap-footer">
		<div class="container">
			<div id="footer" class="sixteen columns">
				<small id='footer_note'><?php echo $homepage->note; ?></small>
				<small id='processwire'>Powered by <a target='_blank' href='http://processwire.com'>ProcessWire Open Source CMS</a></small>
			</div><!--/#footer-->
		</div><!--/.container-->
	</div><!--/#footer-container-->


</body>
</html>
