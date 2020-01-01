<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Palmeria
 */

get_header();
?>

<div class="section" id="detailForm">
    <div class="skContent">
    <?php
    if ( have_posts() ) :
            ?>
            <header>
                <h1 class="page-title screen-reader-text"><?php single_post_title(); ?></h1>
            </header>
            <?php
        /* Start the Loop */
        while ( have_posts() ) :
            the_post();
            the_content();
        endwhile;
    else :
        get_template_part( 'template-parts/content', 'none' );
    endif;
    ?>
    </div>
</div>

<?php
get_footer();