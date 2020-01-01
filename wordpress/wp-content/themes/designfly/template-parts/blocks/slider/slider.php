<?php

/**
 * Slider Block Template.
 *
 * @param   array $block The block settings and attributes.
 * @param   string $content The block inner HTML (empty).
 * @param   bool $is_preview True during AJAX preview.
 * @param   (int|string) $post_id The post ID this block is saved to.
 */

// Create id attribute allowing for custom "anchor" value.
$id = 'slider-' . $block['id'];
if( !empty($block['anchor']) ) {
    $id = $block['anchor'];
}

// Create class attribute allowing for custom "className" and "align" values.
$className = 'slider';
if( !empty($block['className']) ) {
    $className .= ' ' . $block['className'];
}
if( !empty($block['align']) ) {
    $className .= ' align' . $block['align'];
}
if( $is_preview ) {
    $className .= ' is-admin';
}

?>
<div id="<?php echo esc_attr($id); ?>" class="<?php echo esc_attr($className); ?> banner-container-full">
    <?php if( have_rows('slides') ): ?>
		<div class="slides banner-container-main">
			<?php while( have_rows('slides') ): the_row(); 
				$image = get_sub_field('image');
				?>
				<div class="banner-content">
					<center>
                    <?php //print_r(have_rows('slides')); ?>
					<?php echo wp_get_attachment_image( $image['id'], 'full', "", ["class" => "banner-content-image"] ); ?>

					</center>
					<div class="banner-content-heading-div">
						<p class="banner-content-heading-p">
							<?php echo esc_html($image['caption']); ?>
						</p>
					</div>
					<div class="banner-content-para">
						<p class="banner-content-para-p">
							<?php echo esc_html($image['description']); ?>
						</p>
					</div>
				</div>
			<?php endwhile; ?>
		</div>
	<?php else: ?>
		<p>Please add some slides.</p>
	<?php endif; ?>
</div>


<?php  /* 
<div class="banner-container-main">
	<?php if( have_rows('slides') ): ?>
	<div>
<!-- 		<img class="banner-left-arrow" src="images/home/slider-arrows.png" /> -->
	</div>
	<?php while( have_rows('slides') ): the_row(); 
				$image = get_sub_field('image');
				?>
	<div class="banner-content">
		<center>
			<div>
					<?php echo wp_get_attachment_image( $image['id'], 'full' ); ?> 
			</div>
		</center>
		<div class="banner-content-heading-div">
			<p class="banner-content-heading-p">
				<?php echo esc_html($image['caption']); ?>
			</p>
		</div>
		<div class="banner-content-para">
			<p class="banner-content-para-p">
				<?php echo esc_html($image['description']); ?>
			</p>
		</div>
	</div>
		<?php endwhile; ?>
			</div>
		<?php else: ?>
			<p>Please add some slides.</p>
		<?php endif; ?>
	<div>
<!-- 		<img class="banner-right-arrow" src="images/home/slider-arrows.png" /> -->
	</div>
</div>
?> */ ?>