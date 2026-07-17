<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                    <h4><?= $centre->title ?></h4>
                        <ul>
                            <li><a href="<?= site_url('') ?>"><i class="fa fa-home"></i> Home</a></li>
                            <li>
                                <a href="<?= site_url($centre->alias.'/events') ?>">Events</a>
                            </li>
                            <li><?= isset($event) ? $event->title : '' ?></li>
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
            <!-- Page Features -->
            <div class="row">
                <!-- Blog Entries Column -->
                <div class="col-lg-9 col-md-9">
                    <div class="stm_post_info single-post">
                        <?php if (isset($event) && $event) { ?>
                            <h5 class="pb-1"><?= $event->title ?></h5>

                            <div class="stm_post_details clearfix">
                                <ul class="clearfix">
                                    <li class="post_date">
                                        <i class="fa fa fa-clock-o"></i>
                                        <?= date("jS F, Y H:i", strtotime($event->created_at)) ?>
                                    </li>
                                    <li class="post_by">By
                                        <span><?= strtoupper($author->username) ?></span>
                                    </li>

                                    <li class="post_by">
                                        <span><?= isset($category) ? $category->name : '' ?></span>
                                    </li>
                                </ul>
                            </div>
                            <!--./stm_post_details -->

                            <hr />

                            <div class="post_thumbnail">
                                <?php if (!empty($event->photo) && file_exists('./assets/uploads/photo/' . $event->photo)) { ?>
                                    <img src="<?= base_url('./assets/uploads/photo/' . $event->photo) ?>" alt="<?= $event->title ?>">
                                <?php } ?>
                            </div>
                            <!--./post-thumbnail -->

                            <div class="pt-2">
                                <?php if (!empty($event->organizer))
                                    echo '<p>Organizer: <b>' . $event->organizer . '</b></p>';

                                echo '<p>Event Date: <b>' . date('d-m-Y', strtotime($event->event_at)) . '</b></p>';

                                echo '<p>Venue: <b>' . $event->venue . '</b></p>';

                                //event status
                                //                                echo 'Event Status: ';
                                //                                if ($event->status == 'upcoming-event') {
                                //                                    echo '<span class="expired"><b>Upcoming Event</b></span>';
                                //                                } else if ($event->status == 'ongoing-event') {
                                //                                    echo '<span class="expired"><b>Ongoing Event</b></span>';
                                //                                } else if ($event->status == 'past-event') {
                                //                                    echo '<span class="expired"><b>Expired</b></span>';
                                //                                } else {
                                //                                    if (strtotime($event->event_at) < strtotime(date('Y-m-d')))
                                //                                        echo '<span class="expired"><b>Expired</b></span>';
                                //                                } 
                                ?>
                            </div>
                            <!--./details -->

                            <hr />

                            <div class="mt20">
                                <?= strip_all_tags($event->contents) ?>
                            </div>
                            <!--./post_excerpt -->
                            <hr>

                            <div class="post_bottom mt20">
                                <div class="share_buttons media-right">
                                    <label>Share</label>
                                    <!-- AddToAny BEGIN -->
                                    <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
                                        <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
                                        <a class="a2a_button_facebook"></a>
                                        <a class="a2a_button_twitter"></a>
                                        <a class="a2a_button_email"></a>
                                        <a class="a2a_button_whatsapp"></a>
                                    </div>
                                    <!--./a2a_kit -->
                                    <script async src="https://static.addtoany.com/menu/page.js"></script>
                                    <!-- AddToAny END -->
                                </div>
                                <!--./share_buttons -->
                            </div>
                            <!--./post_bottom -->


                        <?php } ?>
                    </div>
                    <!--./ single post -->
                </div>
                <!--./col-lg-9 -->

                <div class="col-lg-3 col-md-3">
                    <div class="sidebar-nav">

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
            </div><!-- /.row -->
        </div>
        <!--./container -->
    </div>
    <!--./events -->
</section>