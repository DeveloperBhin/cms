<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <ul>
                            <li><a href="<?= site_url('') ?>"><i class="fa fa-home"></i> Home</a></li>
                            <li><a href="<?= site_url($centre->alias . '/staff') ?>" title="">Staff</a></li>
                            <li><?= $staff->name ?></li>
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
                    <div class="event_info single-post pt-2">
                        <?php if (isset($staff) && $staff) { ?>
                            <div class="row">
                                <div class="col-md-4">
                                    <?php
                                    if ($staff->photo != '' && file_exists('./assets/uploads/staff/' . $staff->photo))
                                        echo '<img width="100%" src="' . base_url('assets/uploads/staff/' . $staff->photo) . '" />';
                                    else
                                        echo '<img src="' . base_url('assets/img/profile.jpg') . '" />';
                                    ?>
                                </div>
                                <!--./col-md-4 -->

                                <div class="col-md-8">
                                    <h5 class="stripe_2 pt-2"><?= $staff->name ?></h5>

                                    <div class="">
                                        <p>Position: <b><?= $staff->position ?></b></p>
                                        <p>Email: <b><?= $staff->email ?></b></p>
                                    </div>
                                </div>
                                <!--./col-md-8 -->
                            </div>
                            <!--./row -->
                            <hr />
                            <div class="mt20">
                                <?= $staff->description ?>
                            </div>
                            <!--./post_excerpt -->
                            <hr>
                        <?php } ?>
                    </div>
                    <!--./ single post -->
                </div>
                <!--./col-lg-9 -->

                <div class="col-lg-3 col-md-3">
                    <h5 class="tweet-title mt20">Latest Tweets</h5>
                    <div class="latest-tweet">
                        <a class="twitter-timeline" href="https://twitter.com/tzagriculture?ref_src=twsrc%5Etfw">Tweets by
                            tzagriculture</a>
                        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                    </div>
                    <!--./latest-tweet -->
                </div>
                <!--./col-lg-3 -->
            </div>
            <!--./row -->
        </div>
        <!--./container-->
    </div>
    <!--./content-->
</section>