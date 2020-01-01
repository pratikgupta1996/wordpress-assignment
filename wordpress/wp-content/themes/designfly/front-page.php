<?php /*Template Name: Home Template*/ ?>
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
                    <nav id="site-navigation" class="main-navigation header-tab ">
                        <?php
                            wp_nav_menu( array(
                                'theme_location' => 'Primary',
                                'menu_id'        => 'primary-menu',
                                'menu_class'     => 'primary-menu'
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
    <!------------------------------------BANNER--------------------------------------------->

    <div class="banner-container-full">
        <div class="banner-container-main">
            <div>
                <img class="banner-left-arrow" src="<?php echo get_template_directory_uri() ?>/images/home/slider-arrows.png" onclick=plusDivs(-1) />
            </div>

            <?php
                $args = array(
                        'post_type' => 'portfolio',
                        'posts_per_page' => -1,
                    );
                $the_query = new WP_Query( $args );
                if ( $the_query->have_posts() ):
                    while ( $the_query->have_posts() ) : $the_query->the_post();
                ?>
                        <div class="banner-content">
                    <center>
                        <div>
                            <img class="banner-content-image" src="<?php echo get_the_post_thumbnail_url(); ?>" />
                        </div>
                    </center>
                    <div class="banner-content-heading-div">
                        <p class="banner-content-heading-p">
                            <?php echo the_title(); ?>
                        </p>
                    </div>
                    <div class="banner-content-para">
                            <?php the_content(); ?>
                    </div>
                </div>
                <?php
                    endwhile;
                    wp_reset_postdata();
                else:
                    ?>
                    <div class="banner-content">
                        <center>
                            <div>
                                <img class="banner-content-image" src="<?php echo get_template_directory_uri() ?>/images/home/slider-image2.png" />
                            </div>
                        </center>
                        <div class="banner-content-heading-div">
                            <p class="banner-content-heading-p">
                                Gearing up the ideas
                            </p>
                        </div>
                        <div class="banner-content-para">
                            <p class="banner-content-para-p">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                labore
                                et dolore magna aliqua. Ut enim ad minim veniam
                            </p>
                        </div>
                    </div>

                    <div class="banner-content">
                        <center>
                            <div>
                                <img class="banner-content-image" src="<?php echo get_template_directory_uri() ?>/images/home/image-2.png" />
                            </div>
                        </center>
                        <div class="banner-content-heading-div">
                            <p class="banner-content-heading-p">
                                This is image 2
                            </p>
                        </div>
                        <div class="banner-content-para">
                            <p class="banner-content-para-p">
                                Borem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                labore
                                et dolore magna aliqua. Ut enim ad minim veniam
                            </p>
                        </div>
                    </div>

                <?php
                endif;
            ?>

            <div>
                <img class="banner-right-arrow" src="<?php echo get_template_directory_uri() ?>/images/home/slider-arrows.png" onclick="plusDivs(1)" />
            </div>
        </div>


    </div>

    <!------------------------------------HOME PAGE starts here -------------------------------------------------------->

    <!---------------------------------------FEATURES--------------------------------------------------------------------->
    <div class="home-feature">
        <div class="home-feature-container">
			<?php
			$taxonomy = 'portfolios';	
			$terms = get_terms($taxonomy, array('number' => 3)); //Get texonomy
			
			the_field('category_image', 'options');
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

    <!---------------------------------------MAIN CONTENT--------------------------------------------------------------------->
    <!-----------------------------------MAIN CONTENT HEADER-->
    <div class="home-main-container-header">
        <div class="home-main-container-header-heading">
            D'SIGN IS THE SOUL
        </div>
        <div>
            <a class="home-main-container-header-button" href="<?php echo site_url().'/portfolio/' ?>">View all</a>
        </div>

    </div>
    <hr class="hr">

    <div class="home-main-container-content">
<?php $args = array(
				'post_type'=> 'portfolio',
				'posts_per_page' => '6'
			);
		$the_query = new WP_Query( $args );
		if ( $the_query->have_posts() ) :
		while ( $the_query->have_posts() ) : $the_query->the_post(); 
?>
        <div class="home-main-content">
            <a href="<?= get_permalink() ?>"><img src="<?= get_the_post_thumbnail_url(); ?>" /></a>
        </div>
<?php 	wp_reset_postdata();
		endwhile;
		endif; 
?>
    </div>

    
    <hr class="hr">

    <!------------------------------------FOOTER-------------------------------------------------------->
<?php get_footer();?>


<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("banner-content");
        if (n > x.length) {slideIndex = 1}
        if (n < 1) {slideIndex = x.length}
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex-1].style.display = "block";
    }

</script>