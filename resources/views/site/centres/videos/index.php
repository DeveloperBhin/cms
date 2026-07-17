<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                    <h4><?= $centre->title ?> : Video Documentaries</h4>
                        <ul>
                            <li><a href="<?= site_url('') ?>" title="">Home</a></li>
                            <li>Video Documentaries</li>
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
                <?php if (isset($videos) && $videos) { ?>
                    <?php foreach ($videos as $values) { ?>
                        <div class="col-md-4 d-flex align-items-stretch">
                            <div class="card mb-4 item_wr">
                                <div class="item_thumbnail">
                                    <iframe width="100%" height="240" src="https://www.youtube.com/embed/<?= $values->video_id ?>">
                                    </iframe>
                                </div>

                                <div class="content">
                                    <h6>
                                        <a href="https://www.youtube.com/watch?v=<?= $values->video_id ?>" target="_blank"><?= $values->name ?></a>
                                    </h6>
                                </div>
                                <!--./content -->
                            </div>
                            <!--./item_wr -->
                        </div>
                        <!--./item -->
                    <?php } ?>
            </div>
            <!--./ stm_grid -->
        <?php } else {
                    echo '<div class="col-md-12">There are no any video at the moment....</div>';
                } ?>

        <!-- Pagination -->
        <?php if (!empty($links)) : ?>
            <div class="widget-foot">
                <?= $links ?>
                <div class="clearfix"></div>
            </div>
        <?php endif; ?>
        </div><!-- /.row -->
    </div>
    <!--./container -->
</section>