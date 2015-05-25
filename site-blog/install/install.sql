# --- WireDatabaseBackup {"time":"2015-05-25 13:24:18","user":"","dbName":"pw_xyz","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<h3>The page you were looking for is not found.</h3><p>Please use our search engine or navigation above to find the page.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1015', '<p>Usitas vel consectetuer nisl magna eros et refero, fatua letalis consequat. Appellatio consectetuer neo imputo te transverbero olim volutpat.</p><p>Illum exerci commodo exputo natu feugiat foras, vulputate velit, duis scisco antehabeo augue. Wisi usitas laoreet iaceo regula capio, tum ea eum adipiscing ut, commoveo pecus.</p><p>Capto gilvus inhibeo, facilisi melior ibidem duis huic te eligo aliquip quia. Validus vereor incassum, iriure, metuo praesent dolor secundum, dolor imputo. Melior praesent caecus ullamcorper turpis eligo euismod nulla utrum ut iustum enim facilisi tation.</p><p>Modo odio accumsan gravis aliquip ulciscor iriure te plaga quae damnum. Tego singularis dignissim lobortis gravis oppeto nunc abbas duis ullamcorper. Comis nulla consectetuer ingenium et singularis, consequat decet vulpes mara quod premo. Abico caecus autem pecus in blandit nulla ea velit, consequat eligo genitus pecus neo dolus. Quibus epulae nullus patria vereor immitto accumsan incassum foras in in. Quidem quia antehabeo tum vulputate sagaciter ea secundum adipiscing. In iriure volutpat eros rusticus commoveo jus illum vulputate lenis eum importunus validus wisi nulla.</p><p>Mos esse neo dolore quidem quidne.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1075', '<p>Thank you for installing the ProcessWire blog profile. This is a basic blog profile designed to get you started quickly. The profile can be used as-is or modified to suit your needs. This blog profile was made by <a href=\"http://www.ryancramer.com\">Ryan Cramer</a> for use with <a href=\"http://processwire.com\">ProcessWire open source CMS/CMF</a> version 2.2+. The front-end uses the <a href=\"http://www.getskeleton.com/\">Skeleton CSS framework</a>, making it responsive and mobile friendly. If viewing on a computer, you can resize your browser upwards and downwards to see the different viewports provided. The color scheme used on this profile is based on Nikola Vidoni\'s <a href=\"http://modules.processwire.com/modules/futura-admin-theme/\">Futura admin theme</a> for ProcessWire. </p><h4>Getting Started</h4><ul><li>The admin control panel can be accessed by loading the /processwire/ URL in your web browser. </li><li>Once logged into the admin, you\'ll want to edit the homepage. This page contains site-wide configuration settings like your site title, tagline and what widgets appear in the sidebar. </li><li>You\'ll see a page in the admin for each of your sidebar widgets under the Tools page. These can be edited to change their behavior.  </li><li>Configure your comments settings. See the first comment in this post for instructions. </li><li>Start entering posts and categories. Perhaps it\'s a good idea to replace the default ones already in place (like this one). </li><li>This blog profile also includes special pages for Archives, Authors and Recent Comments. If you don\'t want these in your navigation, edit the relevant page, click the <em>settings</em> tab, check the <em>hidden</em> box, then <em>save</em>. </li><li>Need help or have questions? Stop by the <a href=\"http://processwire.com/talk/\">ProcessWire forums</a>. </li></ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1081', '<p>To make a photo gallery, create a new post, open the <em>images</em> field and drag some photos into it. If you don\'t place any of those images in your body copy then it\'ll automatically make a thumbnail gallery for you, like this: </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1079', '<p>If you are a web developer, you may want to know where the files responsible for this output live. Below is a summary of files and directories used by this profile:</p><p><strong>/site/templates/</strong><br />Blog profile site templates</p><p><strong>/site/templates/blog.inc</strong><br />Shared blog-specific functions included by most site templates.  </p><p><strong>/site/templates/main.inc</strong><br />The main HTML markup file through which everything is output.</p><p><strong>/site/templates/markup/</strong> <br />Contains PHP files that generate markup for specific things like posts, comments, etc. This is separated from the site templates to make it simpler for you to modify the markup if you want to. This is primarily used by the blog.inc functions, but also included by a couple templates as well.</p><p><strong>/site/templates/skeleton/</strong><br />This is the Skeleton CSS framework. It is identical to the one they distribute except we added a wider viewport to it. You probably wouldn\'t have much need to edit anything in here.</p><p><strong>/site/templates/styles/</strong> <br />Stylesheets used by the blog profile. The most useful one in here would probably be <em>theme.css</em>, which contains all the color definitions for the profile.  </p><p><strong>/site/templates/scripts/</strong><br />Javascript files used by the blog profile. Not much is happening in here at present.  </p><h3>How the template files work</h3><p>In ProcessWire there are any number of ways you can use your template files. In this case, we are using our template files (in /site/templates/) to populate 3 variables ($content, $headline and $subnav) and then including an HTML file (main.inc) to output them in the right places.</p><p>The $content variable represents the center (body) column, the $headline variable represents the text headline of the page, and the $subnav variable represents the navigation that appears in the left sidebar.</p><p>Once one or more of these variables is populated, the template file includes the /site/templates/<strong>main.inc</strong> file. That main.inc file is just a big HTML file that outputs the $content, $headline and $subnav variables in the right places.</p><p>We\'ve made an attempt here to separate most of the logic used in the template files from the output. Most of the markup is generated from files in /site/templates/markup/. These files are included from the template files to output specific things like a blog post, comment, etc.  </p><p>Because a lot of output needs are similar among the various template files, we\'ve created a file called /site/templates/<strong>blog.inc</strong> that has a few shared functions in it. If you look in any of the template files, you\'ll see that most of them include blog.inc as the first thing. This blog.inc file also initializes our $content, $headline and $subnav variables, mentioned earlier. </p><p>For a different approach to site templates, take a look at the default site profile included with ProcessWire.  </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1155', '<p>This blog profile will automatically recognize URLs from YouTube and Vimeo. To embed a video, simply copy the URL out of your address bar when viewing a video at YouTube or Vimeo. Paste the URL in it\'s own paragraph in your body copy and then it will appear, like this: </p><p>http://www.youtube.com/watch?v=Wl4XiYadV_k</p><p><em>Note that this capability requires that your web host supports the allow_url_fopen option in PHP. </em></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1083', '<p>Paragraph copy. Consequat natu eum facilisi nisl tamen abbas. Cogo nulla defui secundum pala pneum, imputo. <strong>Bold vero humo, tego nulla pagus</strong>, ingenium, vulpes macto bene quidne, turpis. Dignissim et premo abdo eros, ille abdo ut, verto ut feugait dolore patria similis. <em>Italic dolore luctus ad letatio nullus quia ideo exerci.</em> Populus autem in lenis delenit facilisi, elit transverbero. Premo ad iriure transverbero delenit valetudo nobis enim eros quidem eligo ut. <a href=\"http://processwire.com\">Link</a></p><h3>Headline 3</h3><h4>Headline 4</h4><h5>Headline 5</h5><ul><li>Bulleted list item 1</li><li>Bulleted list item 2</li><li>Bulleted list item 3</li></ul><p>Suscipit gilvus epulae ut, nostrud eros, exerci ratis olim ea duis. Ad pala, augue eum utrum augue duis utrum patria refoveo. Augue distineo tristique eros utinam hos plaga in scisco distineo dolus venio, eros bene.</p><ol><li>Numbered list item 1</li><li>Numbered list item 2</li><li>Numbered list item 3</li></ol><p>Reprobo veniam eu probo, enim pecus natu. Tation facilisi duis, sudo, ut te multo virtus neque capio. Quibus pneum vulputate abbas facilisi suscipit capto.</p><blockquote><p>Blockquote. Feugait iustum enim cui cui vulpes dolus multo. Quidne iusto ingenium abico damnum eu. Dolor jumentum te macto, sudo velit typicus quis, ille suscipere odio occuro. Vindico reprobo, zelus qui ratis nullus gravis quae paulatim qui dignissim. Letatio blandit iriure huic ne populus in ad plaga ne tincidunt ille. Et vereor tation suscipit opes, premo vel zelus mara metuo singularis os euismod, et.</p></blockquote><p>Suscipit ut ibidem wisi vulpes venio mara et eros.</p><p>Voco blandit magna inhibeo rusticus illum valetudo mara, tristique ut neque. Ibidem luctus autem caecus nostrud olim amet lobortis nisl demoveo tation. Quis exerci dolus autem suscipere esca ibidem in dolore, interdico, bene singularis hos, quidne. Laoreet letalis patria duis nibh, dignissim.</p><p>Acsi minim vel ut ad occuro at te gilvus wisi praesent vel humo facilisi mara.</p><p>Delenit illum jugis, ulciscor ibidem vindico utinam nulla pecus, validus camur accumsan tum exputo natu. Ventosus adsum iriure ymo nobis sit meus defui, obruo laoreet commoveo defui eu quae mara. Praesent singularis dolor enim in vereor commodo delenit dolor, dolus, conventio, acsi vero voco. Ut acsi aliquip facilisi euismod dolor ut. Validus nobis blandit hendrerit in nimis vel abbas vero facilisis, fere turpis sudo.</p><p>Ut, damnum, blandit verto feugiat aliquip ideo. Accumsan adipiscing veniam nostrud praesent eum. Eros neque illum sino, aliquip aliquip tum, opes nibh. Venio augue saepius feugait tamen volutpat reprobo abico regula feugiat premo scisco os volutpat. Capio duis consequat capto validus capio exerci caecus lucidus. Facilisis regula facilisi et praesent, obruo diam. Suscipere pertineo ratis luptatum abigo ea et consequat. Sit tation vel luctus quidem foras diam dignissim ut velit, capto nonummy sed metuo tum.</p><p>Ut nimis feugait interdico, ut tamen. Haero lucidus validus duis damnum modo in in exerci vel, sino ex adsum sudo suscipit. Mos hos consequat autem, eum vel lenis odio, luptatum nimis, odio vel huic singularis. Iaceo plaga amet aptent torqueo ymo nisl lucidus sed at cogo esse, transverbero. Erat quis iriure neo feugiat ullamcorper defui. Secundum verto, brevitas luctus adipiscing autem premo augue nisl ullamcorper quibus pagus. Ille loquor dolor ymo minim nutus, mara dolus tation. Ut os velit minim causa singularis ventosus.</p>');

DROP TABLE IF EXISTS `field_categories`;
CREATE TABLE `field_categories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1079', '1077', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1083', '1077', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1075', '1078', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1081', '1078', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1155', '1078', '0');

DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `cite` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL,
  `created_users_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(128) DEFAULT NULL,
  `subcode` varchar(40) DEFAULT NULL,
  `upvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `downvotes` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pages_id_sort` (`pages_id`,`sort`),
  KEY `status` (`status`,`email`),
  KEY `pages_id` (`pages_id`,`status`,`created`),
  KEY `code` (`code`),
  KEY `subcode` (`subcode`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`) VALUES('1075', 'Configure your comments settings in the admin control panel by going to: Setup > Fields > comments > details (tab). At minimum, enter the email address you want comment notifications delivered to. The default behavior of this profile is that comments require moderation before appearing on the site. But you may want to change that behavior. I also recommend that you connect your comments with Akismet if possible (for SPAM protection). To edit or delete a comment, edit the blog post it appears on. You\'ll see the \'comments\' settings near the bottom of your edit screen.', '2', '71', '1', 'Ryan Cramer', 'ryan@processwire.com', '1339436168', '41', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5', '', '0', '0', NULL, NULL, '0', '0');

DROP TABLE IF EXISTS `field_comments_votes`;
CREATE TABLE `field_comments_votes` (
  `comment_id` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`,`ip`,`vote`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_date`;
CREATE TABLE `field_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1083', '2012-05-15 16:29:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1081', '2012-07-31 13:48:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1079', '2012-06-10 09:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1155', '2012-07-30 10:01:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1075', '2012-08-01 17:55:00');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_files`;
CREATE TABLE `field_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Basic Blog Profile');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1027', 'ProcessWire CMS/CMF');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1028', 'ProcessWire Support Forum');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1018', 'Recent Comments');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1015', 'About Us');

DROP TABLE IF EXISTS `field_href`;
CREATE TABLE `field_href` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_href` (`pages_id`, `data`) VALUES('1027', 'http://processwire.com');
INSERT INTO `field_href` (`pages_id`, `data`) VALUES('1028', 'http://processwire.com/talk/');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1081', '1.jpg', '0', 'Milwaukee Art Museum (Exterior)', '2015-05-25 12:42:21', '2015-05-25 12:42:21');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1081', '3.jpg', '1', 'Milwaukee Art Museum (Interior)', '2015-05-25 12:42:21', '2015-05-25 12:42:21');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1081', '2.jpg', '2', 'Milwaukee Art Museum (Detail)', '2015-05-25 12:42:21', '2015-05-25 12:42:21');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1081', '5.jpg', '3', 'Building next to Milwaukee Art Museum', '2015-05-25 12:42:21', '2015-05-25 12:42:21');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1081', '4.jpg', '4', 'Milwaukee Art Museum (Interior)', '2015-05-25 12:42:21', '2015-05-25 12:42:21');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1081', '6.jpg', '5', 'Milwaukee Art Museum (Interior Window)', '2015-05-25 12:42:21', '2015-05-25 12:42:21');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1081', '7.jpg', '6', 'Train in front of the Milwaukee Art Museum', '2015-05-25 12:42:21', '2015-05-25 12:42:21');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1081', '8.jpg', '7', 'Train in front of the Milwaukee Art Museum', '2015-05-25 12:42:21', '2015-05-25 12:42:21');

DROP TABLE IF EXISTS `field_links`;
CREATE TABLE `field_links` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_links` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1025', '1027,1028', '2', '1026');

DROP TABLE IF EXISTS `field_note`;
CREATE TABLE `field_note` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_note` (`pages_id`, `data`) VALUES('1072', 'processwire');
INSERT INTO `field_note` (`pages_id`, `data`) VALUES('1', 'Copyright 2012');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1082', '156');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1158', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1159', '169');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1161', '171');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1164', '176');

DROP TABLE IF EXISTS `field_quantity`;
CREATE TABLE `field_quantity` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1019', '3');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1020', '3');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1', '3');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1072', '3');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1018', '10');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', ' This is a basic and responsive blog profile designed to get you started quickly. ');

DROP TABLE IF EXISTS `field_tags`;
CREATE TABLE `field_tags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1083', '1085', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1079', '1086', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1079', '1087', '1');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1079', '1088', '2');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1081', '1088', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1081', '1089', '1');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1155', '1156', '0');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Page Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1000', 'Search Posts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Blog Posts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Archives');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Widgets');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Recent Posts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Recent Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'links');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'Blogroll');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'blogroll');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1082', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1149', 'Tools');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1156', 'Videos');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1155', 'How to embed videos');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1087', 'CSS');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1088', 'Customization');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1089', 'Photography');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1083', 'Test post');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1084', 'Tags');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1085', 'Uninteresting');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1079', 'Technical Details');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1077', 'Web Development');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1078', 'Introductory');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1086', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1081', 'How to make a photo gallery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1075', 'Welcome to the blog profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1068', 'Authors');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1072', 'Recent Tweets');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1157', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1158', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1159', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1160', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1161', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1162', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1163', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1164', 'Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1165', 'Use the comments manager');

DROP TABLE IF EXISTS `field_widgets`;
CREATE TABLE `field_widgets` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_widgets` (`pages_id`, `data`, `sort`) VALUES('1', '1019', '1');
INSERT INTO `field_widgets` (`pages_id`, `data`, `sort`) VALUES('1', '1020', '0');
INSERT INTO `field_widgets` (`pages_id`, `data`, `sort`) VALUES('1', '1025', '2');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('112', 'tags');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'post');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'posts');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'archives');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'tag');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'widgets');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'comments');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'widget-recent-comments');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'widget-recent-posts');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'repeater_links');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'widget-links');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'authors');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'widget-recent-tweets');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '78', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '107', '4', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '78', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '76', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '100', '5', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '4', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '76', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '102', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '102', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '1', '0', '{\"label\":\"Display name (first and last name)\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '104', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '78', '0', '{\"collapsed\":0,\"columnWidth\":50,\"label\":\"Website Title\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '103', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '44', '4', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '76', '5', '{\"label\":\"Biography\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '102', '2', '{\"label\":\"Number of comments to show per page\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '44', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '102', '1', '{\"label\":\"Number of recent tweets to show\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '105', '2', '{\"label\":\"Twitter screen name\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '6', '{\"collapsed\":2,\"description\":\"This body copy will appear above the posts on the homepage. You may prefer to leave it blank unless you want some introduction copy to appear here. \"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '78', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '97', '1', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', '{\"columnWidth\":70}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '5', '{\"label\":\"Quantity of posts to show on homepage\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', '{\"description\":\"Appears in the masthead\",\"label\":\"Site Title\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', '{\"description\":\"An optional sentence or two of text that appears directly below the Site Title on all pages. \",\"label\":\"Site Tagline\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '105', '3', '{\"label\":\"Line of text that appears in footer\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '108', '6', '{\"collapsed\":2}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '7', '');

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"entityEncode\":1,\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"collapsed\":2,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextarea', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,codemagic,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h3,h4,h5,blockquote,pre\",\"plugins\":\"inlinepopups,safari,media,paste,fullscreen,codemagic\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,h5,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code,pre\",\"textformatters\":[\"TextformatterVideoEmbed\"],\"contentType\":2,\"collapsed\":0,\"send_templates\":[46,45,1,29,3],\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Headline', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeText', 'note', '1', 'Note', '{\"size\":0,\"maxlength\":1024,\"textformatters\":[\"TextformatterEntities\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeDatetime', 'date', '1', 'Date', '{\"_dateOutputFormat\":\"j F Y\",\"dateOutputFormat\":\"j F Y g:i a\",\"size\":30,\"datepicker\":3,\"_dateInputFormat\":\"j F Y\",\"dateInputFormat\":\"j F Y\",\"defaultToday\":1,\"_timeOutputFormat\":\"g:i a\",\"_timeInputFormat\":\"g:i a\",\"timeInputFormat\":\"g:i a\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeComments', 'comments', '0', 'Comments', '{\"moderate\":2,\"deleteSpamDays\":3,\"collapsed\":2,\"schemaVersion\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeFile', 'files', '0', 'Files', '{\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png mp3 wav zip module css png jpg gif jpeg js\",\"maxFiles\":0,\"entityEncode\":1,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"collapsed\":2,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypePage', 'categories', '0', 'Categories', '{\"derefAsPage\":0,\"parent_id\":1007,\"template_id\":45,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"addable\":1,\"description\":\"Select one or more categories below and drag to sort them in order of relevance. If you want a category that doesn\'t already exist, create a new one. \"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypePage', 'widgets', '0', 'Sidebar Widgets', '{\"derefAsPage\":0,\"parent_id\":1017,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeInteger', 'quantity', '1', 'Quantity of items to show', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeURL', 'href', '1', 'Website URL', '{\"noRelative\":0,\"addRoot\":0,\"size\":0,\"maxlength\":1024}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeRepeater', 'links', '0', 'Links', '{\"template_id\":53,\"parent_id\":1024,\"repeaterReadyItems\":3,\"repeaterFields\":[78,103]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypePage', 'tags', '0', 'Tags', '{\"derefAsPage\":0,\"parent_id\":1084,\"template_id\":57,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageAutocomplete\",\"addable\":1}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '1', '{\"showFields\":[]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":10}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'FieldtypeComments', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldCommentsAdmin', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'MarkupCache', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'FieldtypeRepeater', '3', '{\"repeatersRootPageID\":1023}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('153', 'InputfieldRepeater', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('154', 'MarkupTwitterFeed', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'MarkupRSS', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'InputfieldPageAutocomplete', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'PagePathHistory', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'TextformatterVideoEmbed', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'InputfieldSelector', '10', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessPageLister', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'ProcessRecentPages', '1', '', '2015-05-25 06:42:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'JqueryFancybox', '1', '', '2015-05-25 06:42:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'ProcessLogger', '1', '', '2015-05-25 06:42:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'InputfieldIcon', '0', '', '2015-05-25 06:42:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'InputfieldCKEditor', '0', '', '2015-05-25 06:55:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'MarkupHTMLPurifier', '0', '', '2015-05-25 06:55:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'JqueryMagnific', '1', '', '2015-05-25 06:55:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'ProcessCommentsManager', '1', '', '2015-05-25 07:02:54');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(255) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1167 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1', '0', '1', 'home', '9', '2012-07-31 08:57:22', '41', '0000-00-00 00:00:00', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2015-05-25 06:42:21', '40', '0000-00-00 00:00:00', '2', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('3', '2', '2', 'page', '21', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('6', '3', '2', 'add', '1045', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2011-08-14 22:04:52', '41', '2010-02-07 05:29:39', '2', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('8', '3', '2', 'list', '21', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('11', '22', '2', 'template', '21', '2011-03-29 21:37:06', '41', '2010-02-01 11:04:54', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('16', '22', '2', 'field', '21', '2011-03-29 21:37:06', '41', '2010-02-01 12:44:07', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('21', '2', '2', 'module', '21', '2011-03-29 21:37:06', '41', '2010-02-02 10:02:24', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2011-03-29 21:37:06', '41', '2010-02-09 12:16:59', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2011-05-03 23:38:10', '41', '2010-02-17 09:59:39', '2', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('27', '1149', '46', 'http404', '1035', '2012-07-30 15:12:45', '41', '2010-06-03 06:53:03', '3', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('28', '2', '2', 'access', '13', '2011-05-03 23:38:10', '41', '2011-03-19 19:14:20', '2', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('29', '28', '2', 'users', '29', '2011-04-05 00:39:08', '41', '2011-03-19 19:15:29', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2011-04-05 00:38:39', '41', '2011-03-19 19:15:45', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2011-04-05 00:53:52', '41', '2011-03-19 19:16:00', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2011-09-06 15:34:24', '41', '2011-03-19 19:17:03', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2011-09-06 15:34:33', '41', '2011-03-19 19:17:23', '2', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2011-09-06 15:34:48', '41', '2011-03-19 19:17:41', '2', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2011-09-06 15:34:14', '41', '2011-03-19 19:17:57', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2011-04-05 01:37:19', '41', '2011-03-19 19:18:41', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2011-08-17 14:34:39', '41', '2011-03-19 19:18:55', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2015-05-25 06:42:21', '40', '2011-03-19 19:41:26', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2011-08-17 14:26:09', '41', '2011-03-20 17:31:59', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2011-09-06 15:34:58', '41', '2011-03-26 22:04:50', '41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2011-09-06 15:35:09', '41', '2011-03-26 22:25:31', '41', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2011-09-06 15:35:42', '41', '2011-03-30 00:06:47', '41', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2011-08-16 22:32:48', '41', '2011-04-26 00:02:22', '41', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2011-08-15 17:48:12', '41', '2011-08-15 17:45:48', '41', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2011-03-29 21:37:06', '41', '2010-08-04 05:23:59', '2', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2011-03-29 21:37:06', '41', '2010-09-28 05:39:30', '2', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2011-03-29 21:37:06', '41', '2010-10-01 05:03:56', '2', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2011-03-29 21:37:06', '41', '2010-10-13 03:56:48', '2', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2011-05-03 23:38:10', '41', '2011-04-25 23:57:18', '41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1000', '1149', '26', 'search', '1025', '2012-07-31 08:45:42', '41', '2010-09-06 05:05:28', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1006', '1', '43', 'posts', '1025', '2012-07-31 09:01:04', '41', '2012-06-05 09:16:31', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1007', '1', '44', 'categories', '1', '2012-07-02 14:57:56', '41', '2012-06-05 09:16:50', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1015', '1149', '46', 'about', '1', '2012-07-09 16:00:59', '41', '2012-06-05 13:24:51', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1016', '1', '47', 'archives', '1', '2012-07-02 14:56:22', '41', '2012-06-05 16:23:58', '41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1017', '1149', '49', 'widgets', '1025', '2012-07-03 10:03:44', '41', '2012-06-06 09:32:33', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1018', '1', '50', 'comments', '1', '2012-07-02 14:56:28', '41', '2012-06-06 10:19:41', '41', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1019', '1017', '52', 'recent-posts', '1', '2012-06-07 08:27:55', '41', '2012-06-06 11:21:34', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1020', '1017', '51', 'recent-comments', '1', '2012-06-07 08:28:01', '41', '2012-06-06 11:21:44', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1023', '2', '2', 'repeaters', '1036', '2012-06-07 12:47:35', '41', '2012-06-07 12:47:35', '41', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1024', '1023', '2', 'for-field-104', '17', '2012-06-07 12:49:08', '41', '2012-06-07 12:49:08', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1025', '1017', '54', 'blogroll', '1', '2012-06-09 17:44:04', '41', '2012-06-07 12:54:05', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1026', '1024', '2', 'for-page-1025', '17', '2012-06-07 12:54:05', '41', '2012-06-07 12:54:05', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1027', '1026', '53', '1339088046-03-1', '1', '2012-06-07 12:59:36', '41', '2012-06-07 12:54:06', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1028', '1026', '53', '1339088046-05-2', '1', '2012-06-09 17:44:04', '41', '2012-06-07 12:54:06', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1029', '1026', '53', '1339088046-06-3', '3073', '2012-06-07 12:57:06', '41', '2012-06-07 12:54:06', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1030', '1026', '53', '1339088184-61-1', '3073', '2012-06-07 12:57:06', '41', '2012-06-07 12:56:24', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1031', '1026', '53', '1339088376-55-1', '3073', '2012-06-07 12:59:36', '41', '2012-06-07 12:59:36', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1082', '7', '2', '1082_export-site-profile', '9217', '2015-05-25 07:05:18', '41', '2012-06-12 13:11:24', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1084', '1', '58', 'tags', '1', '2012-07-02 14:57:48', '41', '2012-07-02 14:56:08', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1155', '1006', '29', 'how-to-embed-videos', '1', '2012-07-31 10:09:06', '41', '2012-07-31 10:01:26', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1156', '1084', '57', 'videos', '1', '2012-07-31 10:07:48', '41', '2012-07-31 10:07:48', '41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1085', '1084', '57', 'uninteresting', '1', '2012-07-02 15:01:30', '41', '2012-07-02 15:01:30', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1086', '1084', '57', 'templates', '1', '2012-07-02 15:02:08', '41', '2012-07-02 15:02:08', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1087', '1084', '57', 'css', '1', '2012-07-02 15:02:08', '41', '2012-07-02 15:02:08', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1088', '1084', '57', 'customization', '1', '2012-07-02 15:02:08', '41', '2012-07-02 15:02:08', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1089', '1084', '57', 'photography', '1', '2012-07-02 15:02:38', '41', '2012-07-02 15:02:38', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1083', '1006', '29', 'test-post', '1', '2012-07-31 10:36:49', '41', '2012-06-15 16:29:42', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1079', '1006', '29', 'customizing-template-output', '1', '2012-07-31 10:30:04', '41', '2012-06-11 13:27:42', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1081', '1006', '29', 'how-to-make-a-photo-gallery', '1', '2012-07-31 10:09:19', '41', '2012-06-11 13:48:13', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1075', '1006', '29', 'welcome', '1', '2012-07-31 10:39:05', '41', '2012-06-09 17:55:02', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1077', '1007', '45', 'web-development', '1', '2012-07-03 18:17:23', '41', '2012-06-11 13:25:33', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1078', '1007', '45', 'introductory', '1', '2012-06-11 13:26:06', '41', '2012-06-11 13:26:04', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1068', '1', '55', 'authors', '1', '2012-07-02 14:56:39', '41', '2012-06-08 10:31:25', '41', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1069', '30', '4', 'author', '1', '2012-06-08 10:33:53', '41', '2012-06-08 10:33:24', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1072', '1017', '56', 'recent-tweets', '1', '2012-06-09 17:41:25', '41', '2012-06-08 13:27:07', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1149', '1', '46', 'tools', '1025', '2012-07-09 16:13:12', '41', '2012-07-03 10:01:38', '41', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1157', '31', '5', 'page-lister', '1', '2015-05-25 06:42:20', '40', '2015-05-25 06:42:20', '40', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1158', '3', '2', 'lister', '1', '2015-05-25 06:42:20', '40', '2015-05-25 06:42:20', '40', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1159', '3', '2', 'recent-pages', '1', '2015-05-25 06:42:45', '40', '2015-05-25 06:42:45', '40', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1160', '31', '5', 'page-edit-recent', '1', '2015-05-25 06:42:45', '40', '2015-05-25 06:42:45', '40', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1161', '22', '2', 'logs', '1', '2015-05-25 06:42:59', '40', '2015-05-25 06:42:59', '40', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1162', '31', '5', 'logs-view', '1', '2015-05-25 06:42:59', '40', '2015-05-25 06:42:59', '40', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1163', '31', '5', 'logs-edit', '1', '2015-05-25 06:42:59', '40', '2015-05-25 06:42:59', '40', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1164', '22', '2', 'comments', '1', '2015-05-25 07:02:54', '41', '2015-05-25 07:02:54', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1165', '31', '5', 'comments-manager', '1', '2015-05-25 07:02:54', '41', '2015-05-25 07:02:54', '41', '13');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1069', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1156', '58', '2012-07-31 10:07:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '2', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '49', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '49', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '49', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1072', '49', '2012-07-30 15:16:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1157', '2', '2015-05-25 06:42:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1160', '2', '2015-05-25 06:42:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1162', '2', '2015-05-25 06:42:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1163', '2', '2015-05-25 06:42:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1165', '2', '2015-05-25 07:02:54');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('7', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1006', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1007', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '1149');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1023', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1023', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '1023');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1026', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1026', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1026', '1023');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1026', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1084', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1149', '1');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_sortfields` (`pages_id`, `sortfield`) VALUES('1007', '1');
INSERT INTO `pages_sortfields` (`pages_id`, `sortfield`) VALUES('29', '1');
INSERT INTO `pages_sortfields` (`pages_id`, `sortfield`) VALUES('1084', '1');
INSERT INTO `pages_sortfields` (`pages_id`, `sortfield`) VALUES('1006', '-97');

DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"label\":\"Homepage\",\"modified\":1432549029,\"roles\":[37,1069]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'post', '83', '0', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[43],\"allowChangeUser\":1,\"slashUrls\":1,\"pageLabelField\":\"title\",\"label\":\"Blog Post\",\"modified\":1432551744,\"roles\":[37,1069]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"label\":\"Search\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'posts', '97', '0', '0', '{\"noParents\":1,\"childTemplates\":[29],\"allowPageNum\":1,\"urlSegments\":1,\"slashUrls\":1,\"label\":\"Blog Posts\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'categories', '98', '0', '0', '{\"useRoles\":1,\"addRoles\":[1069],\"noParents\":1,\"childTemplates\":[45],\"slashUrls\":1,\"label\":\"Categories (List)\",\"modified\":1432549029,\"roles\":[37,1069]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'category', '99', '0', '0', '{\"useRoles\":1,\"editRoles\":[1069],\"createRoles\":[1069],\"noChildren\":1,\"parentTemplates\":[44],\"allowPageNum\":1,\"urlSegments\":1,\"slashUrls\":1,\"label\":\"Category\",\"modified\":1432549029,\"roles\":[37,1069]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'basic-page', '100', '0', '0', '{\"slashUrls\":1,\"label\":\"Basic Page\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'archives', '101', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"urlSegments\":1,\"slashUrls\":1,\"label\":\"Archives\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'widgets', '103', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"label\":\"Widgets\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'comments', '104', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"urlSegments\":1,\"slashUrls\":1,\"label\":\"Comments (List)\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'widget-recent-comments', '105', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"label\":\"Widget: Recent Comments\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'widget-recent-posts', '106', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[49],\"slashUrls\":1,\"label\":\"Widget: Recent Posts\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'repeater_links', '107', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'widget-links', '108', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[49],\"slashUrls\":1,\"label\":\"Widget: Links\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'authors', '109', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"urlSegments\":1,\"slashUrls\":1,\"label\":\"Authors\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'widget-recent-tweets', '110', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"label\":\"Widget: Recent Tweets\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'tag', '111', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[58],\"slashUrls\":1,\"label\":\"Tag\",\"modified\":1432549029}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('58', 'tags', '112', '0', '0', '{\"useRoles\":1,\"addRoles\":[1069],\"noParents\":1,\"childTemplates\":[57],\"slashUrls\":1,\"label\":\"Tags\",\"modified\":1432549029,\"roles\":[37,1069]}');

DROP TABLE IF EXISTS `textformatter_video_embed`;
CREATE TABLE `textformatter_video_embed` (
  `video_id` varchar(128) NOT NULL,
  `embed_code` varchar(1024) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `textformatter_video_embed` (`video_id`, `embed_code`, `created`) VALUES('Wl4XiYadV_k', '<iframe width=\"640\" height=\"360\" src=\"http://www.youtube.com/embed/Wl4XiYadV_k?fs=1&feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>', '2012-07-31 10:04:08');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":27,"numCreateTables":34,"numInserts":514,"numSeconds":0}