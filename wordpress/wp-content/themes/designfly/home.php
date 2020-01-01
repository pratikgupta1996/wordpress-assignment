<?php /*Template Name: Blog Template*/ 

get_header();
?>

<div class="blog-container">
    <!--MAIN CONTENT-->
    <div class="blog-main-content-container">
        <div class="blog-main-container-header-heading">
            LET'S BLOG
        </div>
        <hr>
        <?php
    if ( have_posts() ) :
        $posts = get_posts();
        ?>
        <div class="blog-main-content-flexbox">
        <?php foreach ($posts as $post ) : setup_postdata( $post );;  ?>
            <div class="blog-main-content-item">
                <div class="blog-main-content-item-heading">
                    <div class="datelist"><span class="datelist-number"><?php echo get_the_date('d'); ?></span><span class="datelist-text"><?php echo get_the_date('M'); ?></span>
                    </div>
                    <div class="blog-main-content-item-heading-text"><a style="color: #ffffff; text-decoration: none;"href="<?php the_permalink(); ?>"><?php the_title();?></a></div>
                </div>
                <div class="blog-main-content-item-flexbox">
                    <?php
                        if ( !empty( get_the_post_thumbnail_url() ) ) : ?>
                            <div class="blog-main-content-item-img">
                                <img src="<?php echo get_the_post_thumbnail_url(); ?>" />
                            </div>
                    <div class="blog-main-content-item-text-flexbox">
                        <div class="blog-main-content-item-text-subflexbox">
                            <div>by <span class="blog-main-content-item-text-subflexbox-a"><?php designfly_posted_by(); ?></span> on <?php the_date('d M Y');//date_format(the_date(),'d M Y'); ?>
                                </div>
                            <div><span class="blog-main-content-item-text-subflexbox-a" href="#"><?php comments_number();  ?></span></div>
                        </div>
                        <div>
                            <hr>
                        </div>
                        <!-- <hr> -->
                        <div class="blog-main-content-item-text-para">
                            <?php the_excerpt(); ?>
                        </div>
                        <div class="blog-main-content-item-text-read-more">
                            <a class="blog-main-content-item-text-subflexbox-a" href="<?php the_permalink(); ?>">READ MORE</a>
                        </div>
                    </div>
                        <?php else: ?>
                            <div class="blog-main-content-item-text-flexbox" style="width: 100%;">
                                <div class="blog-main-content-item-text-subflexbox">
                                    <div>by <span class="blog-main-content-item-text-subflexbox-a"><?php designfly_posted_by(); ?></span> on <?php the_date('d M Y');//date_format(the_date(),'d M Y'); ?>
                                    </div>
                                    <div><span class="blog-main-content-item-text-subflexbox-a" href="#"><?php comments_number();  ?></span></div>
                                </div>
                                <div>
                                    <hr>
                                </div>
                                <!-- <hr> -->
                                <div class="blog-main-content-item-text-para">
                                    <?php the_excerpt(); ?>
                                </div>
                                <div class="blog-main-content-item-text-read-more">
                                    <a class="blog-main-content-item-text-subflexbox-a" href="<?php the_permalink(); ?>">READ MORE</a>
                                </div>
                            </div>
                        <?php endif; ?>
                </div>
            </div>
            <br>
            <br>
        <?php endforeach;
            endif;
        ?>
        </div>
    </div>
    <div class="sidebar-container">
        <?php get_sidebar(); ?>
    </div>
</div>
<!--SIDE BAR-->
    <hr class="hr">
<?php get_footer(); ?>