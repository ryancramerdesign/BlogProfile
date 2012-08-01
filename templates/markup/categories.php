<?php 

/**
 * Categories markup
 *
 * Used by the /site/templates/categories.php template
 *
 */

if(count($categories)): ?>

	<?php foreach($categories as $category): ?>

		<div class='category'>

			<h3><a href='<?php echo $category->url; ?>'><?php echo $category->title; ?></a></h3>	

			<?php $n = $category->posts->getTotal(); ?>
			<span class='num-posts'>
				<?php echo sprintf(_n('%d post', '%d posts', $n), $n); ?>
				<a class='rss' href='<?php echo $category->url; ?>rss'>RSS</a>
			</span>


			<?php if($n): ?>

			<ul class='category-posts posts-group'>

				<?php foreach($category->posts as $post): ?>
				<li><a href='<?php echo $post->url; ?>'><?php echo $post->title; ?></a></li>
				<?php endforeach; ?>

				<?php if($n > count($category->posts)): ?>
				<li><a class='more' href='<?php echo $category->url; ?>'><?php echo __('View More'); ?></a></li>
				<?php endif; ?>

			</ul>

			<?php endif; ?>

		</div>

	<?php endforeach; ?>


<?php else: ?>

	<p class='no-categories'><?php echo __('No categories to display'); ?></p>

<?php endif; ?>

