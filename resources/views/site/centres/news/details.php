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
                                <a href="<?= site_url($centre->alias . '/news') ?>"><?= isset($category) ? $category->name : '' ?></a>
                            </li>
                            <li><?= isset($post) ? $post->title : '' ?></li>
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
                    <div class="stm_post_info single_post">
                        <?php if (isset($post) && $post) { ?>
                            <h5 class="pb-1"><?= $post->title ?></h5>

                            <div class="stm_post_details clearfix">
                                <ul class="clearfix">
                                    <li class="post_date">
                                        <i class="fa fa fa-clock-o"></i>
                                        <?= date("jS F, Y H:i", strtotime($post->created_at)) ?>
                                    </li>
                                    <li class="post_by">By
                                        <span><?= strtoupper($author->username) ?></span>
                                    </li>
                                    <li class="post_cat">
                                        <span><?= isset($category) ? $category->name : '' ?></span>
                                    </li>
                                </ul>

                                <?php if ($category->alias == 'tenders' || $category->alias == 'vacancies') {
                                    //display nothing
                                } else { ?>
                                    <div class="comments_num">
                                        <a href="#"><i class="fa fa-comments-o"></i>No Comments </a>
                                    </div>
                                <?php } ?>
                            </div>
                            <!--./stm_post_details -->

                            <hr />

                            <div class="post_thumbnail">
                                <?php if (!empty($post->photo) && file_exists('./assets/uploads/photo/' . $post->photo)) { ?>
                                    <img src="<?= base_url('./assets/uploads/photo/' . $post->photo) ?>" alt="<?= $post->title ?>">
                                <?php } ?>
                            </div>
                            <!--./post-thumbnail -->

                            <div class="mt20">
                                <?= strip_all_tags($post->contents) ?>
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
    <!--./news -->
</section>

<script type='text/javascript'>
    (function() {
        var dropdown = document.getElementById("archive-dropdown");

        function onSelectChange() {
            if (dropdown.options[dropdown.selectedIndex].value !== '') {
                document.location.href = this.options[this.selectedIndex].value;
            }
        }

        dropdown.onchange = onSelectChange;
    })();
</script>