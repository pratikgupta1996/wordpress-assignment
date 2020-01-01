<?php

/**
 * designfly functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package designfly
 */

require_once( __DIR__ . '/classes/class-designfly-walker-comment.php');
require_once( __DIR__ . '/classes/class-twentynineteen-svg-icons.php');

    //Custom ACF Slider

    // Register a slider block.
    add_action('acf/init', 'my_register_blocks');
    function my_register_blocks() {

        // check function exists.
        if( function_exists('acf_register_block_type') ) {

            // register a testimonial block.
            acf_register_block_type(array(
            'name' => 'slider',
            'title' => __('Slider'),
            'description' => __('A custom slider block.'),
            'render_template' => 'template-parts/blocks/slider/slider.php',
            'category' => 'formatting',
            'icon'              => 'images-alt2',
            'align'             => 'full',
            'enqueue_assets'    => function(){
                wp_enqueue_style( 'slick', 'http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css', array(), '1.8.1' );
                wp_enqueue_style( 'slick-theme', 'http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css', array(), '1.8.1' );
                wp_enqueue_script( 'slick', 'http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js', array('jquery'), '1.8.1', true );

                wp_enqueue_style( 'block-slider', get_template_directory_uri() . '/template-parts/blocks/slider/slider.min.css', array(), '1.0.0' );
                wp_enqueue_script( 'block-slider', get_template_directory_uri() . '/template-parts/blocks/slider/slider.min.js', array(), '1.0.0', true );
             },
            ));
        }   
    }

    //Theme Support

    // CSS
	function custom_theme_assets() {
        wp_enqueue_style( 'style', get_stylesheet_uri() );
        wp_enqueue_style('banner', get_template_directory_uri() . '/css/banner.css' );

        wp_enqueue_style('demo', get_template_directory_uri() . '/css/demo.css' );
        wp_enqueue_style('footer', get_template_directory_uri() . '/css/footer.css' );
        wp_enqueue_style('header', get_template_directory_uri() . '/css/header.css' );
        wp_enqueue_style('home', get_template_directory_uri() . '/css/home.css' );
        wp_enqueue_style('portfolio', get_template_directory_uri() . '/css/portfolio.css' );
        wp_enqueue_style('portfolio_thick_box', get_template_directory_uri() . '/css/portfolio_thick_box.css' );
        wp_enqueue_style('single_blog_page', get_template_directory_uri() . '/css/single_blog_page.css' );
        wp_enqueue_style('blog_page', get_template_directory_uri() . '/css/blog_page.css' );
        wp_enqueue_script( 'jquery3', 'https://code.jquery.com/jquery-3.4.1.min.js', array(), '3.7.3' );
        wp_enqueue_style( 'lightbox-style', get_theme_file_uri( '/css/lightbox.css' ), array(), '1.0' );
        wp_enqueue_script( 'lightbox-js', get_theme_file_uri( '/js/lightbox.js' ), array('jquery3'), '1.0' );
        wp_enqueue_script( 'pagination-js', get_theme_file_uri( '/js/pagination.min.js' ), array('jquery3'), '1.0' );
        wp_enqueue_script( 'custom', get_theme_file_uri( '/js/custom.js' ), array('jquery'), '1.0', true );
		wp_enqueue_style( 'simplePagination', get_theme_file_uri( '/css/simplePagination.css' ), array(), '1.0' );
        // wp_enqueue_script( 'fullpage_js', get_template_directory_uri() . '/js/fullpage.js' );
        // wp_enqueue_script( 'custom_js', get_template_directory_uri() . '/js/custom.js' );
    }
    add_action( 'wp_enqueue_scripts', 'custom_theme_assets' );

    add_theme_support( 'menus' );
    register_nav_menus( array(
        'Primary' => esc_html__( 'Primary', 'Design Fly' ),
    ) );

    function designfly_setup() {
        /*
         * Make theme available for translation.
         * Translations can be filed at WordPress.org. See: https://translate.wordpress.org/projects/wp-themes/twentysixteen
         * If you're building a theme based on Twenty Sixteen, use a find and replace
         * to change 'twentysixteen' to the name of your theme in all the template files
         */
        load_theme_textdomain( 'designfly' );

        // Add default posts and comments RSS feed links to head.
        add_theme_support( 'automatic-feed-links' );

        /*
         * Let WordPress manage the document title.
         * By adding theme support, we declare that this theme does not use a
         * hard-coded <title> tag in the document head, and expect WordPress to
         * provide it for us.
         */
        add_theme_support( 'title-tag' );

        /*
         * Enable support for custom logo.
         *
         *  @since Twenty Sixteen 1.2
         */
        add_theme_support(
            'custom-logo',
            array(
                'height'      => 240,
                'width'       => 240,
                'flex-height' => true,
            )
        );

        /*
         * Enable support for Post Thumbnails on posts and pages.
         *
         * @link https://developer.wordpress.org/reference/functions/add_theme_support/#post-thumbnails
         */
        add_theme_support( 'post-thumbnails' );
        set_post_thumbnail_size( 1200, 9999 );
        /*
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5.
         */
        add_theme_support(
            'html5',
            array(
                'search-form',
                'comment-form',
                'comment-list',
                'gallery',
                'caption',
                'script',
                'style',
            )
        );

        /*
         * Enable support for Post Formats.
         *
         * See: https://wordpress.org/support/article/post-formats/
         */
        add_theme_support(
            'post-formats',
            array(
                'aside',
                'image',
                'video',
                'quote',
                'link',
                'gallery',
                'status',
                'audio',
                'chat',
            )
        );

        /*
         * This theme styles the visual editor to resemble the theme style,
         * specifically font, colors, icons, and column width.
         */
        //add_editor_style( array( 'css/editor-style.css', twentysixteen_fonts_url() ) );

        // Load regular editor styles into the new block-based editor.
        add_theme_support( 'editor-styles' );

        // Load default block styles.
        add_theme_support( 'wp-block-styles' );

        // Add support for responsive embeds.
        add_theme_support( 'responsive-embeds' );

        // Add support for custom color scheme.
        add_theme_support(
            'editor-color-palette',
            array(
                array(
                    'name'  => __( 'Dark Gray', 'designfly' ),
                    'slug'  => 'dark-gray',
                    'color' => '#1a1a1a',
                ),
                array(
                    'name'  => __( 'Medium Gray', 'designfly' ),
                    'slug'  => 'medium-gray',
                    'color' => '#686868',
                ),
                array(
                    'name'  => __( 'Light Gray', 'designfly' ),
                    'slug'  => 'light-gray',
                    'color' => '#e5e5e5',
                ),
                array(
                    'name'  => __( 'White', 'designfly' ),
                    'slug'  => 'white',
                    'color' => '#fff',
                ),
                array(
                    'name'  => __( 'Blue Gray', 'designfly' ),
                    'slug'  => 'blue-gray',
                    'color' => '#4d545c',
                ),
                array(
                    'name'  => __( 'Bright Blue', 'designfly' ),
                    'slug'  => 'bright-blue',
                    'color' => '#007acc',
                ),
                array(
                    'name'  => __( 'Light Blue', 'designfly' ),
                    'slug'  => 'light-blue',
                    'color' => '#9adffd',
                ),
                array(
                    'name'  => __( 'Dark Brown', 'designfly' ),
                    'slug'  => 'dark-brown',
                    'color' => '#402b30',
                ),
                array(
                    'name'  => __( 'Medium Brown', 'designfly' ),
                    'slug'  => 'medium-brown',
                    'color' => '#774e24',
                ),
                array(
                    'name'  => __( 'Dark Red', 'designfly' ),
                    'slug'  => 'dark-red',
                    'color' => '#640c1f',
                ),
                array(
                    'name'  => __( 'Bright Red', 'designfly' ),
                    'slug'  => 'bright-red',
                    'color' => '#ff675f',
                ),
                array(
                    'name'  => __( 'Yellow', 'designfly' ),
                    'slug'  => 'yellow',
                    'color' => '#ffef8e',
                ),
            )
        );

        // Indicate widget sidebars can use selective refresh in the Customizer.
        add_theme_support( 'customize-selective-refresh-widgets' );
    }
     // twentysixteen_setup
    add_action( 'after_setup_theme', 'designfly_setup' );

    register_nav_menus(array(
        'primary' => __('Primary Menu'),
        'footer' => __('Footer Menu')
    ));

    function designfly_sidebar_registration() {

        //Arguments Used In All  register_sidebar() calls
        $shared_args = array(
            'before_title'  => '<h2 class="widget-title subheading heading-size-3">',
            'after_title'   => '</h2>',
            'before_widget' => '<div class="widget %2$s"><div class="widget-content">',
            'after_widget'  => '</div></div>', 
        );
        register_sidebar(
            array(
                'name'          => __( 'Sidebar', 'twentysixteen' ),
                'id'            => 'sidebar-1',
                'description'   => __( 'Add widgets here to appear in your sidebar.', 'twentysixteen' ),
                'before_widget' => '<section id="%1$s" class="widget %2$s">',
                'after_widget'  => '</section>',
                'before_title'  => '<h2 class="widget-title">',
                'after_title'   => '</h2>',
            )
        );

        register_sidebar(
            array(
                'name'          => __( 'Content Bottom 1', 'twentysixteen' ),
                'id'            => 'sidebar-2',
                'description'   => __( 'Appears at the bottom of the content on posts and pages.', 'twentysixteen' ),
                'before_widget' => '<section id="%1$s" class="widget %2$s">',
                'after_widget'  => '</section>',
                'before_title'  => '<h2 class="widget-title">',
                'after_title'   => '</h2>',
            )
        );

        register_sidebar(
            array(
                'name'          => __( 'Content Bottom 2', 'twentysixteen' ),
                'id'            => 'sidebar-3',
                'description'   => __( 'Appears at the bottom of the content on posts and pages.', 'twentysixteen' ),
                'before_widget' => '<section id="%1$s" class="widget %2$s">',
                'after_widget'  => '</section>',
                'before_title'  => '<h2 class="widget-title">',
                'after_title'   => '</h2>',
            )
        );
        register_sidebar(
            array(
                'name' => 'Footer Sidebar 1',
                'id' => 'footer-sidebar-1',
                'description' => 'Appears in the footer area',
                'before_widget' => '<aside id="%1$s" class="widget %2$s">',
                'after_widget' => '</aside>',
                'before_title' => '<h3 class="widget-title">',
                'after_title' => '</h3>',
                ) 
        );
        register_sidebar( 
            array(
                'name' => 'Footer Sidebar 2',
                'id' => 'footer-sidebar-2',
                'description' => 'Appears in the footer area',
                'before_widget' => '<aside id="%1$s" class="widget %2$s">',
                'after_widget' => '</aside>',
                'before_title' => '<h3 class="widget-title">',
                'after_title' => '</h3>',
            ) 
        );
    }

    add_action( 'widgets_init', 'designfly_sidebar_registration' );

//Custom Post Type : Portfolio

//Custom Post Type : Portfolio

	function custom_posttype_portfolio() {
		$supports = array(
		'title', // post title
		'discription',// post description
		'editor', // post content
		'author', // post author
		'thumbnail', // featured images
		'excerpt', // post excerpt
		'custom-fields', // custom fields
		'comments', // post comments
		'revisions', // post revisions
		'post-formats', // post formats
		'categories',
		'post-thumbnail'
		);
		$labels = array(
		'name' => _x('Portfolios', 'plural'),
		'singular_name' => _x('portfolio', 'singular'),
		'menu_name' => _x('Portfolio', 'admin menu'),
		'name_admin_bar' => _x('Portfolio', 'admin bar'),
		'add_new' => _x('Add New', 'add new'),
		'add_new_item' => __('Add New Portfolio'),
		'new_item' => __('New Portfolio'),
		'edit_item' => __('Edit Portfolio'),
		'view_item' => __('View Portfolio'),
		'all_items' => __('All Portfolio'),
		'search_items' => __('Search Portfolio'),
		'not_found' => __('No Portfolio Found.'),
		);
		$args = array(
		'supports' => $supports,
		'labels' => $labels,	
		'public' => true,
		'query_var' => true,
		'rewrite' => array('slug' => 'portfolio'),
		'has_archive' => true,
		'hierarchical' => true,
		'menu_icon' => get_template_directory_uri().'/images/portfolio-icon.png',
		'show_in_rest' => true, //Can use gutenberg editor
		// 'supports' => array( 'thumbnail' )
		'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'rewrite' => true,
        'capability_type' => 'post',
        'supports' => array('title','editor','thumbnail')
		);
		register_post_type('portfolio', $args);
	}
	add_action('init', 'custom_posttype_portfolio');
	
//registration of taxonomies
function portfolio_texonomy() {

	//labels array
	
	$labels = array(
	'name' => _x( 'Portfolio Categories', 'taxonomy general name' ),
	'singular_name' => _x( 'Portfolio Category', 'taxonomy singular name' ),
	'search_items' => __( 'Search Portfolio Categories' ),
	'all_items' => __( 'All Portfolio Categories' ),
	'parent_item' => __( 'Parent Portfolio Category' ),
	'parent_item_colon' => __( 'Parent Portfolio Category:' ),
	'edit_item' => __( 'Edit Portfolio Category' ),
	'update_item' => __( 'Update Portfolio Category' ),
	'add_new_item' => __( 'Add New Portfolio Category' ),
	'new_item_name' => __( 'New Portfolio Category' ),
	'menu_name' => __( ' Portfolio Categories' ),
	);
	
	//args array
	
	$args = array(
	'labels' => $labels,
	'hierarchical' => true,
	'show_in_rest' => true,
	'show_admin_column' => true,
	'show_ui'           => true,
	'query_var'         => true,
	'rewrite'           => array( 'slug' => 'categories' ),
	);
	
	register_taxonomy( 'portfolios', 'portfolio', $args );
	}
	   
	add_action( 'init', 'portfolio_texonomy', 0 );

	

    // For Comments Section 
    function twentynineteen_comment_form_defaults( $defaults ) {
        $comment_field = $defaults['comment_field'];

        // Adjust height of comment form.
        $defaults['comment_field'] = preg_replace( '/rows="\d+"/', 'rows="5"', $comment_field );

        return $defaults;
    }
    add_filter( 'comment_form_defaults', 'twentynineteen_comment_form_defaults' );

    function twentynineteen_get_discussion_data() {
        static $discussion, $post_id;

        $current_post_id = get_the_ID();
        if ( $current_post_id === $post_id ) {
            return $discussion; /* If we have discussion information for post ID, return cached object */
        } else {
            $post_id = $current_post_id;
        }

        $comments = get_comments(
            array(
                'post_id' => $current_post_id,
                'orderby' => 'comment_date_gmt',
                'order'   => get_option( 'comment_order', 'asc' ), /* Respect comment order from Settings » Discussion. */
                'status'  => 'approve',
                'number'  => 20, /* Only retrieve the last 20 comments, as the end goal is just 6 unique authors */
            )
        );

        $authors = array();
        foreach ( $comments as $comment ) {
            $authors[] = ( (int) $comment->user_id > 0 ) ? (int) $comment->user_id : $comment->comment_author_email;
        }

        $authors    = array_unique( $authors );
        $discussion = (object) array(
            'authors'   => array_slice( $authors, 0, 6 ),           /* Six unique authors commenting on the post. */
            'responses' => get_comments_number( $current_post_id ), /* Number of responses. */
        );

        return $discussion;
    }
    if ( ! function_exists( 'twentynineteen_comment_form' ) ) :
        /**
         * Documentation for function.
         */
        function twentynineteen_comment_form( $order ) {
            if ( true === $order || strtolower( $order ) === strtolower( get_option( 'comment_order', 'asc' ) ) ) {

                comment_form(
                    array(
                        'logged_in_as' => null,
                        'title_reply'  => null,
                    )
                );
            }
        }
    endif;
    function twentynineteen_get_avatar_size() {
        return 60;
    }
    function twentynineteen_is_comment_by_post_author( $comment = null ) {
        if ( is_object( $comment ) && $comment->user_id > 0 ) {
            $user = get_userdata( $comment->user_id );
            $post = get_post( $comment->comment_post_ID );
            if ( ! empty( $user ) && ! empty( $post ) ) {
                return $comment->user_id === $post->post_author;
            }
        }
        return false;
    }
    function twentynineteen_get_icon_svg( $icon, $size = 24 ) {
        return TwentyNineteen_SVG_Icons::get_svg( 'ui', $icon, $size );
    }
    //Custom pagination
    function pagination_bar( $custom_query ) {

        $total_pages = $custom_query->max_num_pages;
        $big = 999999999; // need an unlikely integer

        if ($total_pages > 1){
            $current_page = max(1, get_query_var('paged'));

            echo paginate_links(array(
                'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
                'format' => '?paged=%#%',
                'current' => $current_page,
                'total' => $total_pages,
            ));
        }
    }
/**
 * Implement the Custom Header feature.
 */
//require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
//require get_template_directory() . '/inc/customizer.php';