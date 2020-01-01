<?php /*Template Name: Single Blog Template
	Template Post Type: post, page, product*/

get_header();
?>
    <!---------------------------------------SINGLE BLOG PAGE--------------------------------------------------------------------->

    <div class="single-blog-container">

        <!--MAIN CONTENT-->
        <div class="single-blog-main-content-container">
        	<?php print_r(the_post());?>
            <div class="single-blog-main-container-header-heading">
                <?php the_title(); ?>
            </div>
            <div class="single-blog-main-content-item-text-subflexbox">
                <div>by <span class="single-blog-main-content-item-text-subflexbox-a"> <?php echo get_the_author_link() ?></span> on
                    <?php the_date('d M Y'); ?></div>
                <div><a class="single-blog-main-content-item-text-subflexbox-a" href="#"><?php comments_number(); ?></a></div>
            </div>
            <hr>
            <div class="single-blog-main-content-flexbox">
                <?php the_content(); ?>
            </div>

            <div class="single-blog-tags">
                <div class="single-blog-tags-label">
                    TAGS:
                </div>
                <div class="single-blog-tags-text">
                    <a href="#" class="single-blog-tags-text-a">HTML</a>,
                    <a href="#" class="single-blog-tags-text-a">CSS</a>,
                    <a href="#" class="single-blog-tags-text-a">Javascript</a>
                </div>
            </div>

            <hr>
            <div class="comments-label">
                Comments
            </div>
            <hr>
            <div class="comments-container">
                <?php comments_template(); ?>
             </div>
        </div>
        <!--SIDE BAR-->
        <div class="sidebar-container">
            <!--SIDEBAR ITEMS-->
            <?php get_sidebar();?>
    	</div>
    </div>
    <hr class="hr">
    <script type="text/javascript">
        $(document).ready(function (){
            $('.comment-reply').after('<div class="clear"></div>');
        });
    </script>
    <?php get_footer(); ?>