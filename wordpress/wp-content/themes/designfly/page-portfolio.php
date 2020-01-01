<?php
    /*Template Name: Portfolio Template*/
 get_header(); ?>
    <!---------------------------------------MAIN CONTENT--------------------------------------------------------------------->
    <!-----------------------------------MAIN CONTENT HEADER-->
    <div class="home-main-container-header">
        <div class="home-main-container-header-heading">
            D'SIGN IS THE SOUL
        </div>
        <div class="home-main-container-header-button-flexbox">
			<a class="home-main-container-header-button category_name" category_name="all" href="<?php echo esc_attr( add_query_arg( 'is_selected', 'ALL' ) ); ?>" >All</a>
			<?php
			$taxonomy = 'portfolios';	
			$terms = get_terms($taxonomy); // Get all terms of a taxonomy
			if ( $terms && !is_wp_error( $terms ) ) :
				foreach ( $terms as $term ) {
			?>
            <div>
                <a class="home-main-container-header-button category_name" category_name="<?php echo $term->slug ?>" href="<?php echo esc_attr( add_query_arg( 'is_selected', $term->slug ) ); ?>" ><?php echo $term->name; ?></a>
            </div>
			<?php
				wp_reset_postdata();
				}
			endif;?>
        </div>
    </div>
    <hr class="hr">

    <div class="home-main-container-content">
<?php 	
		$paged = get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1;
		$post_per_page = 6;
		
		if(isset($_REQUEST['is_selected']))
		{
			if(isset($_REQUEST['is_selected']) && $_REQUEST['is_selected'] == 'ALL' )
			{
				$args = array(
					'post_type'=> 'portfolio',
					'posts_per_page' => $post_per_page,
					'paged' => $paged,
				);
			}
			else
			{
				$args = array(
					'post_type'=> 'portfolio',
					'posts_per_page' => '3',
					'paged' => $paged,
					'tax_query' => array(
						array(
							'taxonomy' => 'portfolios',
							'posts_per_page' => $post_per_page,
							'field'    => 'slug',
							'terms'    => $_REQUEST['is_selected'],

							) ),
					);
			}
		}
		else
		{
			$args = array(
					'post_type'=> 'portfolio',
					'posts_per_page' => $post_per_page,
					'paged' => $paged,
				);
		}
		
		$the_query = new WP_Query( $args );
?>
<?php if ( $the_query->have_posts() ) : ?>
<?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
		<div class="home-main-content">
            <img id="myImg" src="<?php echo get_the_post_thumbnail_url(); ?>" />
			<input type="hidden" class="thumbnail_description" value="<?php the_content() ?>" >
            <div class="image-overlay" onclick="openImg(this)">
                <div class="image-overlay-div">
                    <img src="<?php echo get_template_directory_uri().'/images/logo1.png' ?>" />
                </div>
                <a class="image-overlay-link-text" href="#">View image</a>
            </div>
        </div>

<?php wp_reset_postdata(); ?>
		<?php endwhile; ?>
<?php else:  ?>
<p><?php echo( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?>

 </div><!--PORTFOLIO MODAL-->

    <div id="portfolioModal" class="modal">
        <div class="modal-parent-container">
            <div class="modal-container">
                <div class="modal-image">
                    <img id="img01" src="" />
                </div>
                <div class="modal-footer">
                    <div><?php /*
                        <img class="modal-footer-left-arrow" src="<?php echo get_template_directory_uri() ?>/images/home/slider-arrows.png" /> */ ?>
                    </div>
                    <div id="caption" class="modal-footer-text">

					</div>
                    <div>
						<?php /*
                        <img class="modal-footer-right-arrow" src="<?php echo get_template_directory_uri() ?>/images/home/slider-arrows.png" /> */ ?>
                    </div>
                </div>
            </div>
            <div class="modal-close" onclick="closeImg()">
                <span class="modal-close-span" >X</span>
            </div>
        </div>
    </div>

<!--PORTFOLIO MODAL-->
    <div class="pagination-container">	
        <div class="pagination-number-box">
<!--             <a class="pagination-numbers" href="#"> </a> -->
			<?php pagination_bar($the_query); ?>
        </div>
    </div>
    <hr class="hr">
<script>
		 // Get the <span> element that closes the modal
        function openImg(obj){
            console.log("hello");
            var url = obj.parentNode.children[0].src;
			$('.modal-footer-text').html(obj.parentNode.children[1].value);
            console.log(url);
            var target = document.getElementsByClassName("modal-image")[0];
            console.log(target);
            target.children[0].src = url;
            target.parentNode.parentNode.parentNode.style.display="block";
        }
        function closeImg() {
            var span = document.getElementsByClassName("modal-close-span")[0];
            // span.parentNode.parentNode.style.display = "none";
            span.parentNode.parentNode.parentNode.style.display="none";
        }
	
	$('.category_name').click(function(){
			var category_name = $(this).attr('category_name');
				alert(site_url);
				$.ajax({
					url : '<?= home_url() ?>/portfolio/?is_selected=1&category_name='+category_name,
					type : 'get',
					data :  {category_name:category_name, is_selected:1},
					success : function(data)
					{
						console.log('Success');
					}
					
				});
		
	});
	
</script>
    <!------------------------------------FOOTER-------------------------------------------------------->
    <?php get_footer(); ?>