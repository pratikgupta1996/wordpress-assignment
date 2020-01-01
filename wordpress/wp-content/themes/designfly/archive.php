<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package designfly
 */

get_header();
?>
    <div class="blog-container">
        <!--MAIN CONTENT-->
        <div class="blog-main-content-container">
            <div class="blog-main-container-header-heading">
                <?php the_archive_title(); ?>
            </div>
            <hr>
            <div id="primary" class="content-area">
                <main id="main" class="site-main">
                    <?php if ( have_posts() ) : ?>
                        <header class="page-header">
                            <?php
                            the_archive_description( '<div class="archive-description">', '</div>' );
                            ?>
                        </header><!-- .page-header -->
                        <?php
                        /* Start the Loop */
                        while ( have_posts() ) :
                            the_post();
                            get_template_part( 'template-parts/content', get_post_type() );
                        endwhile;
                        the_posts_navigation();
                    else :
                        get_template_part( 'template-parts/content', 'none' );
                    endif;
                    ?>
                </main><!-- #main -->
            </div><!-- #primary -->
        </div>
        <div class="sidebar-container">
            <?php get_sidebar(); ?>
        </div>
    </div>
    <!--SIDE BAR-->
    <hr class="hr">
<?php get_footer(); ?>