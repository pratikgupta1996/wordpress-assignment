<div class="footer-container">
        <div class="footer-flex-box">
            <div class="footer-container-item">
                <?php if ( is_active_sidebar( 'footer-sidebar-1' )  ) : ?>
                    <aside id="footer1" class="sidebar widget-area" role="complementary">
                        <?php dynamic_sidebar( 'footer-sidebar-1' ); ?>
                    </aside><!-- .footer .widget-area -->
                <?php endif; ?>
            </div>
            <div class="footer-container-item">
                <?php if ( is_active_sidebar( 'footer-sidebar-2' )  ) : ?>
                    <aside id="footer2" class="sidebar widget-area" role="complementary">
                        <?php dynamic_sidebar( 'footer-sidebar-2' ); ?>
                    </aside><!-- .footer .widget-area -->
                <?php endif; ?>
            </div>

        </div>
        <hr style="width: 100%;">
        <center>
            <p class="para content">
                © 2012-D'SIGNfly | Designed by <a class="footer-link" href="#">rtCamp</a>
            </p>
        </center>
    </div>
    <?php wp_footer();?>
</body>

</html>