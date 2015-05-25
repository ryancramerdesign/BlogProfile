# MarkupTwitterFeed

### Module that generates an HTML list for a Twitter feed and caches it. 

Use this to show a Twitter feed on your ProcessWire-powered website. 

This module uses the [tmhOAuth](https://github.com/themattharris/tmhOAuth) library by @themattharris.
This library is included with the MarkupTwitterFeed module files.

## Requirements

- ProcessWire 2.3 or newer
- PHP 5.3 or newer 
- PHP must have CURL and hash_hmac support (already present in most hosting environments)

## To Install

- Place the module files in `/site/modules/MarkupTwitterFeed/`
- In ProcessWire admin, go to *Modules > Check for new modules* and click *install* for *Twitter Feed Markup*.
- Note the Twitter API settings on the settings screen.
   - To obtain these, create a new Twitter application at: [dev.twitter.com/apps](https://dev.twitter.com/apps).
   - Once created, copy and paste the settings to the module configuration.

## To Upgrade

*Before upgrading, please note that this module now requires PHP 5.3 or newer. If you are running PHP 5.2,
this module likely will not work.* 

If you already have the old MarkupTwitterFeed module installed, you do not need to uninstall it unless
it is installed in some location other than `/site/modules/MarkupTwitterFeed/MarkupTwitterFeed.module`.
If it is installed in that location, then simply overwrite the old MarkupTwitterFeed files with the new
ones. If it is not already installed in that location, then uninstall the module first from the modules
admin screen, and then remove the file. 

Proceed with the installation instructions under the **To Install** section above. 

Note that the render() method no longer requires a URL as the first argument. Instead, you may specify
no arguments or specify the $options array as the first argument. However, you do not have to update 
existing code if you do not want to, as this module will detect and ignore old syntax.

## Usage

**Basic example:**
```
$t = $modules->get('MarkupTwitterFeed'); 
echo $t->render(); 
```

**Specifying options example:**
```
$options = array(
  'limit' => 3, 
  'cacheSeconds' => 600, // 10 minutes
  'showDate' => 'before'
  ); 
$t = $modules->get('MarkupTwitterFeed'); 
echo $t->render($options);
```

**If preferred, you can specify options individually before calling render:**
```
$t = $modules->get('MarkupTwitterFeed'); 
$t->limit = 3; 
$t->cacheSeconds = 600; 
$t->showDate = 'before';
echo $t->render();
```

**Or you can iterate the feed rather to generate your own markup...**
Note that when doing this, all of the $options that modify output are no longer applicable, 
as you will be given the data exactly as it is from Twitter. This will likely change in the
next version. But for now, if you take this route, you should avoid setting any options that
would affect the output, so that you will not be affected by changes in the next version.
```
$t = $modules->get('MarkupTwitterFeed');
$t->limit = 3; 
foreach($t as $item) {
  echo "<p>$item[text]<br /><span class='date'>$item[created_at]</span></p>";
}
```

## All available options

Default values are shown below. 

```
$t->limit = 3;                  // max items to show
$t->cacheSeconds = 3600;        // seconds to cache the feed (3600 = 1 hour)*
$t->dateFormat = 'F j g:i a';   // PHP date() or strftime() format for date field: December 4, 2013 1:17 pm
$t->dateFormat = 'relative';	// Displays relative time, i.e. "10 minutes ago", etc. 
$t->linkUrls = true;            // should URLs be linked?
$t->showHashTags = true;        // show hash tags in the tweets?
$t->showAtTags = true;          // show @user tags in the tweets?
$t->showDate = 'after';         // show date/time: 'before', 'after', or blank to disable.
$t->showReplies = false;        // show Twitter @replies in timeline?
$t->showRetweets = false;       // show Twitter retweets in timeline?
$t->timeline = 'user_timeline'; // what timeline to show: mentions_timeline, user_timeline, home_timeline or retweets_of_me
$t->screenName = '';            // screen name to return results for (default=blank, Twitter default)
$t->consumerKey = '';           // Twitter API consumer key*
$t->consumerSecret = '';        // Twitter API consumer secret*
$t->userToken = '';             // Twitter API access/user token*
$t->userSecret = '';            // Twitter API access/user secret*

// generated markup options:
$t->listOpen = "<ul class='MarkupTwitterFeed'>";
$t->listClose = "</ul>";
$t->listItemOpen = "<li>";
$t->listItemClose = "</li>";
$t->listItemDateOpen = "<span class='date'>";
$t->listItemDateClose = "</span>";
$t->listItemLinkOpen = "<a href='{href}'>";
$t->listItemLinkClose = "</a>";
```

*\*Note that the default value of these options is configured from the MarkupTwitterFeed module settings screen.*

