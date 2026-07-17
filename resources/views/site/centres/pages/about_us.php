<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                    <h4>About <?= $centre->title ?></h4>
                        <ul>
                            <li><a href="<?= site_url('') ?>"><i class="fa fa-home"></i> Home</a></li>
                            <li>About <?= isset($centre) ? $centre->title : '' ?></li>
                        </ul>
                    </div><!-- Page Title -->
                </div>
            </div>
            <!--./row -->
        </div>
        <!--./container -->
    </div><!-- page-header -->

    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9">
                    <?php
                    if (isset($centre) && $centre)
                        echo '<div class="pb-4">' . strip_all_tags($centre->contents) . '</div>';
                    ?>
                </div>
                <!--./col-lg-6 -->

                <div class="col-lg-3 col-md-3">
                    <div class="sidebar-nav">
                        <?php //display_about_us() ?>

                        <h5 class="tweet-title mt20">Latest Tweets</h5>
                        <div class="latest-tweet">
                            <a class="twitter-timeline" href="https://twitter.com/tzagriculture?ref_src=twsrc%5Etfw">Tweets by
                                tzagriculture</a>
                            <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                        </div>
                        <!--./latest-tweet -->
                    </div>
                    <!--./sidebar-nav -->
                </div>
                <!--./col-lg-3 -->
            </div>
            <!--./row -->
        </div>
        <!--./container -->
    </div>
    <!--./content -->
</section>
<!--./section -->