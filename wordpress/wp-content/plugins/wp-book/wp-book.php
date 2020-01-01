<?php
/**
 * Plugin Name: WP Book
 * Description: This is the rtCamp Assignment Plugin.
 * Author: Pratik Gupta
 * Version: 2.0
*/

//**********************************************************************************************************************
//*                                             CUSTOM POST TYPE: BOOK                                                 *
//**********************************************************************************************************************
function book_post_type()
{
    $labels = array(
        'name' => _x('Book','plural'),
        'singular_name' => _x('Book', 'singular'),
        'add_new' => _x('Add Book', 'book'),
        'all_items' => __('All Items'),
        'add_new_item' => __('Add Item'),
        'edit_item' => __('Edit Item'),
        'new _item' => __('New Item'),
        'view_item' => __('View Item'),
        'search_item' => __('Search Book'),
        'settings' => __('Settings'),
        'not_found' => __('No Items Found'),
        'not_found_in_trash' => __('No items found in trash'),
        'parent_item_colon' => 'Parent Item',
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => true,
        'publicly_querable' => true,
        'query_var' => true,
        'rewrite' => true,
        'capability_type' => 'post','page',
        'hierarchical' => false,
        'supports' => array(
            'title',
            'editor',
            'excerpt',
            'thumbnail',
            'revisions',
        ),
        'menu_icon' => 'dashicons-book-alt',
        'menu_position' => 5,
        'exclude_from_search' => false,
    );
    register_post_type('book', $args);
}
add_action('init', 'book_post_type');


//**********************************************************************************************************************
//*                                             CUSTOM TAXONOMY                                                        *
//**********************************************************************************************************************
function book_custom_taxonomy()
{
    //Add Taxonomy Hierarchical: BOOK CATEGORY
    $labels = array(
        'name' => _x('Book Category','book_category'),
        'singular_name' => _x('Book Category','singular'),
        'search_items' => __('Search Book Categories'),
        'all_items' => __('All Book Categories'),
        'parent_item' => __('Parent Book Category'),
        'parent_item_colon' => __('Parent Book Category:'),
        'edit_item' => __('Edit Book Category'),
        'update_item' => __('Update Book Category'),
        'add_new_item' => __('Add New Book Category'),
        'new_item_name' => __('New Book Category Name'),
        'menu_name' => __('Book Categories'),
    );
    $args = array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => 'book_category' ),
    );
    register_taxonomy('book_category', array( 'book' ), $args);

    //Add Taxonomy Non-Hierarchical: BOOK TAG

    register_taxonomy('book_tag', 'book', array(
        'label' => 'Book Tag',
        'rewrite' => array( 'slug' => 'book_tag' ),
        'hierarchical' => false,
        'show_admin_column' => true,
    ));
}
add_action('init', 'book_custom_taxonomy');

//**********************************************************************************************************************
//*                                             CUSTOM META BOX                                                        *
//**********************************************************************************************************************
//Custom Meta Box
function book_add_meta_box()
{
    add_meta_box(
        'book_id',
        esc_html__('Book Meta Information', 'default'),
        'book_meta_information_callback',
        'book',
        'side',
        'default'
    );
}
function book_meta_information_callback($post)
{

    wp_nonce_field('book_save_meta_information_data', 'book_meta_information_meta_box_nonce');
?>
    <label for='author_name'><?php echo _e("Author Name:"); ?></label>
    <input type="text" id="author_name" name="author_name" value="<?php echo esc_attr(get_metadata('book',$post->ID, 'author_name', true)) ?>" size="25" />

    <br />

    <label for='price'><?php echo _e("Price:"); ?> </label>
    <input type='number' id='price' name='price' value="<?php echo esc_attr(get_metadata('book', $post->ID, 'price', true))?>" size='25' />

    <br />

    <label for='publisher'><?php echo _e("Publisher:"); ?> </label>
    <input type='text' id='publisher' name='publisher' value="<?php echo esc_attr(get_metadata('book', $post->ID,'publisher',true))?>" size='25' />

    <br />

    <label for='year'><?php echo _e("Year:"); ?> </label>
    <input type='number' id='year' name='year' value="<?php echo esc_attr(get_metadata('book', $post->ID,'year',true))?>" size='25' />

    <br />

    <label for='edition'><?php echo _e("Edition:"); ?> </label>
    <input type='number' id='edition' name='edition' value="<?php echo esc_attr(get_metadata('book', $post->ID,'edition',true))?>" size='25' />

    <br />

    <label for='url'><?php echo _e("Url:"); ?> </label>
    <input type='text' id='url' name='url' value="<?php echo esc_attr(get_metadata('book', $post->ID, 'url', true))?>" size='25' />
<?php
    }
add_action('add_meta_boxes', 'book_add_meta_box');


//**********************************************************************************************************************
//*                                             CUSTOM META TABLE                                                      *
//**********************************************************************************************************************

//Create Table
function my_table()
{
    global $wpdb;
    $table_name = $wpdb->prefix."bookmeta";
//    $charset_collate = $wpdb->get_charset_collate();
    if ( $wpdb->get_var('SHOW TABLES LIKE '.$table_name.';') != $table_name ) {
        $sql = 'CREATE TABLE '.$table_name.' (
        meta_id bigint(20) NOT NULL AUTO_INCREMENT,
        book_id bigint(20) NOT NULL,
        meta_key varchar(255) NOT NULL,
        meta_value text NOT NULL,
        PRIMARY KEY  (meta_id)
        )';
        require_once(ABSPATH.'/wp-admin/includes/upgrade.php');
        dbDelta($sql);
    }
}
register_activation_hook(__FILE__, 'my_table');

//Register Table with Wordpress
function pw_register_metadata_table()
{
    global $wpdb;
    $wpdb->bookmeta = $wpdb->prefix."bookmeta";
}
add_action('plugins_loaded', 'pw_register_metadata_table');

//Saving the Meta data

function book_save_meta_information_data($book_id)
{
    //verify nonce
    if ( !isset($_POST['book_meta_information_meta_box_nonce']) ) {
        return;
    }
    if ( !wp_verify_nonce($_POST['book_meta_information_meta_box_nonce'], 'book_save_meta_information_data') ) {
        return;
    }
    if ( defined('DOING_AUTOSAVE') && DOING_AUTOSAVE ) {
        return;
    }
    if ( !current_user_can('edit_post', $book_id) ) {
        return;
    }

    $field_list = [
        'author_name',
        'price',
        'publisher',
        'year',
        'edition',
        'url'
    ];
    foreach ($field_list as $fieldName) {
        if ( !isset($_POST[$fieldName]) ) {
            return;
        }
    }
    foreach ($field_list as $fieldName) {
        update_metadata('book', $book_id, $fieldName, $_POST[$fieldName]);
    }
}
add_action('save_post', 'book_save_meta_information_data', 10, 1);

//**********************************************************************************************************************
//*                                             ADMIN SETTINGS PAGE                                                    *
//**********************************************************************************************************************

/**
 * custom option and settings
 */
function book_settings_init() {
    // register a new setting for "book" page
    register_setting('book', 'book_options');

    // register a new section in the "book" page
    add_settings_section(
            'book_section_developers',
            __('Book Options', 'book'),
            'book_section_developers_cb',
            'book'
    );

    // register a new field in the "book_section_developers" section, inside the "book" page
    add_settings_field(
            'book_field_currency',
            __('Select Currency', 'book'),
            'book_field_currency_cb',
            'book',
            'book_section_developers',
            [
                'label_for' => 'book_field_currency',
                'class' => 'book_row',
                'book_custom_data' => 'custom',
            ]
    );

    add_settings_field(
        'book_field_pages',
        __('No of books to display per page', 'book'),
        'book_field_pages_cb',
        'book',
        'book_section_developers',
        [
            'label_for' => 'book_field_pages',
            'class' => 'book_row',
            'book_custom_data' => 'custom',
        ]
    );
}

/**
 * register our book_settings_init to the admin_init action hook
 */
add_action('admin_init', 'book_settings_init');

/**
 * custom option and settings:
 * callback functions
 */

// developers section cb
function book_section_developers_cb($args)
{
    ?>
    <p id="<?php echo esc_attr($args['id']); ?>"><?php esc_html_e('Select the options', 'book') ?></p>
    <?php
}

function book_field_currency_cb( $args ) {
    // get the value of the setting we've registered with register_setting()
    $options = get_option( 'book_options' );
    // output the field
    ?>
    <select id="<?php echo esc_attr( $args['label_for'] ); ?>"
            data-custom="<?php echo esc_attr( $args['book_custom_data'] ); ?>"
            name="book_options[<?php echo esc_attr( $args['label_for'] ); ?>]"
    >
        <option value="inr" <?php echo isset( $options[ $args['label_for'] ] ) ? ( selected( $options[ $args['label_for'] ], 'inr', false ) ) : ( '' ); ?>>
            <?php esc_html_e( 'INR', 'book' ); ?>
        </option>
        <option value="usd" <?php echo isset( $options[ $args['label_for'] ] ) ? ( selected( $options[ $args['label_for'] ], 'usd', false ) ) : ( '' ); ?>>
            <?php esc_html_e( 'USD', 'book' ); ?>
        </option>
        <option value="aud" <?php echo isset( $options[ $args['label_for'] ] ) ? ( selected( $options[ $args['label_for'] ], 'aud', false ) ) : ( '' ); ?>>
            <?php esc_html_e( 'AUD', 'book' ); ?>
        </option>
        <option value="euro" <?php echo isset( $options[ $args['label_for'] ] ) ? ( selected( $options[ $args['label_for'] ], 'euro', false ) ) : ( '' ); ?>>
            <?php esc_html_e( 'EURO', 'book' ); ?>
        </option>
    </select>
    <?php
}

function book_field_pages_cb( $args ) {
    // get the value of the setting we've registered with register_setting()
    $options = get_option( 'book_options' );
    // output the field
    ?>
    <select id="<?php echo esc_attr( $args['label_for'] ); ?>"
            data-custom="<?php echo esc_attr( $args['book_custom_data'] ); ?>"
            name="book_options[<?php echo esc_attr( $args['label_for'] ); ?>]"
    >
        <option value="10" <?php echo isset( $options[ $args['label_for'] ] ) ? ( selected( $options[ $args['label_for'] ], '10', false ) ) : ( '' ); ?>>
            <?php esc_html_e( '10', 'book' ); ?>
        </option>
        <option value="20" <?php echo isset( $options[ $args['label_for'] ] ) ? ( selected( $options[ $args['label_for'] ], '20', false ) ) : ( '' ); ?>>
            <?php esc_html_e( '20', 'book' ); ?>
        </option>
        <option value="50" <?php echo isset( $options[ $args['label_for'] ] ) ? ( selected( $options[ $args['label_for'] ], '50', false ) ) : ( '' ); ?>>
            <?php esc_html_e( '50', 'book' ); ?>
        </option>
        <option value="100" <?php echo isset( $options[ $args['label_for'] ] ) ? ( selected( $options[ $args['label_for'] ], '100', false ) ) : ( '' ); ?>>
            <?php esc_html_e( '100', 'book' ); ?>
        </option>
    </select>
    <?php
}

/**
 * Sub-menu
 */
function book_options_page() {
        add_submenu_page(
            'edit.php?post_type=book',
            'Book',
            'Book Settings',
            'manage_options',
            'book',
            'book_options_page_html'
        );
}
/**
 * register our book_options_page to the admin_menu action hook
 */
add_action('admin_menu', 'book_options_page');
/**
 * top level menu:
 * callback functions
 */
function book_options_page_html() {
    // check user capabilities
    if ( ! current_user_can( 'manage_options' ) ) {
        return;
    }

    // add error/update messages

    // check if the user have submitted the settings
    // wordpress will add the "settings-updated" $_GET parameter to the url
    if ( isset( $_GET['settings-updated'] ) ) {
        // add settings saved message with the class of "updated"
        add_settings_error( 'book_messages', 'book_message', __( 'Settings Saved', 'book' ), 'updated' );
    }

    // show error/update messages
    settings_errors( 'book_messages' );
    ?>
    <div class="wrap">
        <h1><?php echo esc_html( get_admin_page_title() ); ?></h1>
        <form action="options.php" method="post">
            <?php
            // output security fields for the registered setting "book"
            settings_fields( 'book' );
            // output setting sections and their fields
            // (sections are registered for "book", each field is registered to a specific section)
            do_settings_sections( 'book' );
            // output save settings button
            submit_button( 'Save Settings' );
            ?>
        </form>
    </div>
    <?php
}

//**********************************************************************************************************************
//*                                             SHORTCODE                                                              *
//**********************************************************************************************************************

function book_shortcode( $atts ) {

    global $wpdb;

    $options = array (
        'post_type' =>	'book',
        'posts_per_page' => 4,
    );

    //IF Category is passed then
    if ( isset( $atts['category'] ) && !empty( $atts['category'] ) ) {
        $options['tax_query'] = array(
            array(
                'taxonomy' => 'book_category',
                'field'    => 'slug',
                'terms'    => array( $atts['category'] ),
            ),
        );
    }

    //IF author is passed then
    if ( isset( $atts['author_name'] ) && !empty( $atts['author_name'] ) ) {
        $author_name = $atts['author_name'];
        $table_name = $wpdb->prefix."bookmeta";
        $sql = "SELECT book_id FROM $table_name WHERE meta_key = 'author_name' AND meta_value = '$author_name' ";
        $authors = $wpdb->get_results( $sql );
        $authors_array = array();
        foreach ( $authors as $author ){
            array_push( $authors_array, $author->book_id );
        }
    }

    //IF publisher is passed then
    if ( isset( $atts['publisher'] ) && !empty( $atts['publisher'] ) ) {
        $publisher = $atts['publisher'];
        $table_name = $wpdb->prefix."bookmeta";
        $sql = "SELECT book_id FROM $table_name WHERE meta_key = 'publisher' AND meta_value = '$publisher' ";
        $publishers = $wpdb->get_results( $sql );
        $publishers_array = array();
        foreach ( $publishers as $publisher ){
            array_push( $publishers_array, $publisher->book_id );
        }
    }

    $options['post__in'] = array_intersect( $authors_array, $publishers_array );

    $the_query = new WP_Query( $options );

    ob_start();
    ?>
    <p>Books  </p>
    <?php
    if ( $the_query->have_posts() ) :
        while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
            <h2><a href="<?php the_permalink(); ?>"><?php the_title() ?></a></h2>
        <?php
        endwhile;
        wp_reset_postdata();
        return ob_get_clean();
    else :
        echo 'No books found';
    endif;

}
add_shortcode('book', 'book_shortcode');


//**********************************************************************************************************************
//*                                             WIDGET                                                                 *
//**********************************************************************************************************************
//Adds Book_Category Widget.

class Book_Category extends WP_Widget{
    //Register widget with wordpress

    function __construct()
    {
        parent::__construct(
                'book_category',
                'Select Book Category',
                array( 'description' => 'This is Book Category Widget' )
        );
    }
    //Front-end display

    public function widget($args, $instance)
    {
        global $wpdb;
        $title = isset($instance['title']) ? $instance['title'] : '';
        $select_book_category = isset($instance['select_book_category']) ? $instance['select_book_category'] : '';

        $term = $wpdb->prefix.'terms';
        $book_category_names = $wpdb->get_results("SELECT name FROM $term WHERE term_id = $select_book_category");
        $book_category_name = '';
        foreach ($book_category_names as $b) {
            $book_category_name = $b->name;
        }

        echo $args['before_widget'];
        if ( $title ) {
           echo $args['before_title'] . apply_filters('widget_title', $instance['title']).": $book_category_name".$args['after_title'];
        }
        if ( $select_book_category ) {
            $term_relationships = $wpdb->prefix.'term_relationships';
            $posts = $wpdb->prefix.'posts';
            $results = $wpdb->get_results(
                    "SELECT * FROM $posts 
                           JOIN $term_relationships 
                           ON $term_relationships.object_id = $posts.ID 
                           WHERE $term_relationships.term_taxonomy_id = $select_book_category"
            );
            if ( $results ) {
                foreach ($results as $result) {
                    echo "<p><a href=".get_permalink($result->ID).">$result->post_title</a></p>";
                }
            }
            else {
                echo "<p>No books preset of selected category.</p>";
            }
        }
        echo $args['after_widget'];
    }

    //Back-end widget form
    public function form($instance)
    {
        if ( isset($instance['title']) && isset($instance['select_book_category']) ) {
            $title = $instance['title'];
            $select_book_category = $instance['select_book_category'];
        }
        else{
            $title = __('New Title', 'text_domain');
            $select_book_category = '';
        }
        ?>
        <p>
            <label for="<?php echo $this->get_field_name('title'); ?>"><?php echo _e('Title'); ?></label>
            <input id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title') ; ?>" type="text" value="<?php echo esc_attr($title); ?>">
        </p>
        <p>
            <label for="<?php echo $this->get_field_name('select_book_category') ?>"><?php echo _e('Select Book Category') ?></label>
            <select id="<?php echo $this->get_field_id('select_book_category'); ?>" name="<?php echo $this->get_field_name('select_book_category'); ?>" >
                <?php
                $terms = get_terms(array(
                            'taxonomy' => 'book_category',
                            'hide_empty' => false,
                ));
                foreach ($terms as $term) {
                    echo '<option value="' . esc_attr( $term->term_id ) . '" id="' . esc_attr( $term->term_id ) . '" '. selected( $select_book_category, $term->term_id, false ) . '>'. $term->name . '</option>';

                }
                ?>
            </select>
        </p>
        <?php
    }

    public function update($new_instance, $old_instance)
    {
        $instance = array();
        $instance['title'] = (!empty($new_instance['title'])) ? strip_tags($new_instance['title']) : '';
        $instance['select_book_category'] = (!empty($new_instance['select_book_category'])) ? wp_strip_all_tags($new_instance['select_book_category']) : '';

        return $instance; // TODO: Change the autogenerated stub
    }
}
add_action('widgets_init', function (){
    register_widget('Book_Category');
});


//**********************************************************************************************************************
//*                                             CUSTOM  DASHBOARD WIDGET                                               *
//**********************************************************************************************************************

function book_dashboard_widget() {
    wp_add_dashboard_widget(
            'book_category_dashboard_widget',
            'Top Book Categories',
            'book_dashboard_widget_cb');
}

function book_dashboard_widget_cb() {
    $book_categories = get_terms( array(
                'taxonomy' => 'book_category',
                'orderby' => 'count',
                'order' => 'DESC',
                'number' => '5',
            )
    );

    foreach ( $book_categories as $book_category ):
        $book_category_link = get_term_link( $book_category );
    ?>
    <p><a href="<?php echo esc_url( $book_category_link ); ?>"> <?php echo $book_category->name; ?> </a></p>
    <?php
    endforeach;
}
add_action('wp_dashboard_setup', 'book_dashboard_widget');

?>