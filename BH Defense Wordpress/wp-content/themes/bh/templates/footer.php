<section class="footer-top">
    <div class="container">
        <div class="row">
            <h2 class="col-md-8">Are there risks you don't see coming?</h2> <a href="<?php echo home_url(); ?>/contact" class="btn-primary btn-large col-md-4">Contact BH Defense</a>
        </div>
        
    </div>
</section>

<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <?php dynamic_sidebar('sidebar-footer-one'); ?>
            </div>
            <div class="col-sm-2 col-sm-offset-1">
				<?php dynamic_sidebar('sidebar-footer-two'); ?>
            </div>
            <div class="col-sm-2">
                <?php dynamic_sidebar('sidebar-footer-three'); ?>
            </div>
            <div class="col-sm-2">
                <?php dynamic_sidebar('sidebar-footer-four'); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-5 additional-links content-info">
                <?php dynamic_sidebar('sidebar-footer-bottom'); ?>
                 <div class="pull-left">
                    <p>&copy; <?php echo date('Y'); ?> <?php bloginfo('name'); ?></p>
                </div>
            </div>
            <div class="by pull-right">Website by<a href="https://k-m.com/"> KM Digital</a></div>
        </div>
    </div>
</footer>

<?php wp_footer(); ?>

