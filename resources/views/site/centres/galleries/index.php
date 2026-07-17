<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <h4><?= $centre->title ?> : Photo Gallery</h4>
                        <ul>
                            <li><a href="<?= site_url('') ?>" title=""><i class="fa fa-home"></i> Home</a></li>
                            <li>Photo Gallery</li>
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
                <?php if (isset($galleries) && $galleries) { ?>
                    <?php foreach ($galleries as $values) { ?>
                        <div class="col-md-3 d-flex align-items-stretch">
                            <div class="card mb-4 item_wr">
                                <div class="item_thumbnail">
                                    <a href="<?= site_url($centre->alias . '/galleries/' . $values->id) ?>">
                                        <?php if (file_exists('./assets/uploads/photo/' . $values->photo)) { ?>
                                            <img src="<?= base_url('./assets/uploads/photo/' . $values->photo) ?>" alt="<?= $values->name ?>">
                                        <?php } else { ?>
                                            <img src="http://placehold.it/700x390" alt="<?= $values->name ?>">
                                        <?php } ?>
                                    </a>
                                </div>

                                <div class="content">
                                    <h6>
                                        <a href="<?= site_url($centre->alias . '/galleries/' . $values->id) ?>"><?= $values->name ?></a>
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
                    echo '<div class="col-md-12">There are no any gallery at the moment....</div>';
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