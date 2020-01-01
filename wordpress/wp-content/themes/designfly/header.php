<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap" rel="stylesheet">
    <?php wp_head() ?>
</head>

<body>
    <!------------------------------------HEADER-------------------------------------------------------->
    <div class="header-container">
        <div class="header">
            <div>
                <img src="<?php echo get_template_directory_uri() ?>/images/home/logo.png">
            </div>
            <div class="xyz">
                <div>
                    <nav id="site-navigation" class="main-navigation">
                        <?php
                            wp_nav_menu( array(
                                'theme_location' => 'Primary',
                                'menu_id'        => 'primary-menu',
                                'menu_class'     => 'header-tab'
                            ) );
                        ?>
                    </nav>
                </div>

                    <form method="get" action="<?php echo home_url(); ?>" role="search" style="display: flex;">
                        <div>
                            <input type="text" class="header-search" value="<?php echo get_search_query() ?>" placeholder="<?php echo esc_attr_x( 'Search …', 'placeholder' ) ?>" name="s" title="<?php echo esc_attr_x( 'Search for:', 'label' ) ?>">
                        </div>

                        <div>
                            <input type="image" src="<?php echo get_template_directory_uri() ?>/images/home/search-icon.png" class="header-tab-search-icon">
                        </div>
                    </form>
            </div>
        </div>
    </div>
    <!---------------------------------------FEATURES--------------------------------------------------------------------->
    <div class="home-feature">
        <div class="home-feature-container">
			<?php
			$taxonomy = 'portfolios';	
			$terms = get_terms($taxonomy, array('number' => 3)); // Get all terms of a taxonomy
			the_field('category_image', 'options');
			print_r(get_field('category_image'));
			if ( $terms && !is_wp_error( $terms ) ) :
				foreach ( $terms as $term ) {
				$category_image = get_field('category_image', $term->taxonomy.'_'.$term->term_id);
			?>
			<div class="home-feature-container-items">
                <div class="home-feature-container-item-img-div">
                    <img class="home-feature-icon-1" src="<?= $category_image['url'] ?>" />
                </div>

                <div class="home-feature-content">
                    <div><a class="home-feature-content-heading" href="<?php echo get_category_link($term->term_id); ?>"><?= $term->name ?></a></div>
                    <div class="home-feature-content-para"><?= wp_trim_words( $term->description, 10 ) ?></div>
                </div>
            </div>
		
			<?php 
				}
			endif;
			?>
        </div>
    </div>