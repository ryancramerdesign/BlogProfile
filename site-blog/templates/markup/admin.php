<?php

/**
 * Admin navigation that appears in the left side when admin logged in 
 *
 */

$adminURL = $config->urls->admin;
echo "<h4>" . $user->get('title|name') . "</h4>";
echo "<ul class='links'>";
echo "<li><a href='{$adminURL}page/edit/?id={$page->id}'>" . __('Edit this page') . "</a></li>";
echo "<li><a href='{$adminURL}page/add/?parent_id=1006'>" . __('Add new post') . "</a></li>";
echo "<li><a href='{$adminURL}profile/'>" . __('Edit your profile') . "</a></li>";
echo "<li><a href='{$adminURL}login/logout/'>" . __('Logout') . "</a></li>";
echo "</ul>";
