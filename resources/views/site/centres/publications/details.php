<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                    <h4><?= $centre->title ?></h4>
                        <ul>
                            <li><a href="<?= site_url('') ?>" title=""><i class="fa fa-home"></i> Home</a></li>
                            <li>
                                <a href="<?= site_url($centre->alias . '/publications/' . $category->alias) ?>"><?= isset($category) ? ucfirst(strtolower($category->name)) : '' ?></a>
                            </li>
                            <li><?= isset($publication) ? ucfirst(strtolower($publication->title)) : '' ?></li>
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
                    <div class="event_info single-post">
                        <?php if (isset($publication) && $publication) { ?>
                            <h5 class="pb-2"><?= $publication->title ?></h5>

                            <div class="stm_post_details clearfix">
                                <ul class="clearfix">
                                    <li class="post_date">
                                        <i class="fa fa fa-clock-o text-primary"></i>
                                        <?= date("jS F, Y H:i", strtotime($publication->created_at)) ?>
                                    </li>
                                    <li class="post_by">By
                                        <span><?= strtoupper($author->username) ?></span>
                                    </li>

                                    <li class="post_cat">
                                        <span><?= isset($category) ? $category->name : '' ?></span>
                                    </li>
                                </ul>
                                <div class="right-span">
                                    <span><i class="fa fa-calendar-o text-primary"></i> Publication Year : <?= $publication->pyear ?></span>
                                </div>
                            </div>
                            <!--./stm_post_details -->
                            <hr />

                            <div class="mt-2 paragraph">
                                <p class="text-small">Author(s) : <b><?= $publication->author ?></b></p>

                                <?= strip_all_tags($publication->contents) ?>
                            </div>
                            <!--./post_excerpt -->

                            <div class="mt-1">
                                <?php
                                if (!empty($publication->document) && file_exists('./assets/uploads/documents/' . $publication->document))
                                    echo anchor('./assets/uploads/documents/' . $publication->document, '<i class="fa fa-cloud-download"></i> Download .PDF', 'class="btn btn-primary btn-sm" download');
                                ?>
                            </div>
                            <!--./document -->

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
                    <hr />
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
    <!--./publications -->
</section>