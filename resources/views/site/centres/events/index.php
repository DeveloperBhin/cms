<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <h4><?= $centre->title ?> : Events</h4>
                        <ul>
                            <li><a href="<?= site_url('') ?>"><i class="fa fa-home"></i> Home</a></li>
                            <li>Events</li>
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
                <div class="col-md-12">
                    <div class="search-form">
                        <?= form_open(uri_string(), 'method="POST"', 'class=""'); ?>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="input-group">
                                    <?php
                                    $keywords = array(
                                        'id' => 'keyword',
                                        'name' => 'keyword',
                                        'type' => 'text',
                                        'class' => 'form-control',
                                        'placeholder' => 'Write search Term here ...'
                                    );
                                    echo form_input($keywords); ?>
                                    <span class="input-group-btn">
                                        <button type="submit" name="search" class="btn btn-primary btn-block">
                                            <i class="fa fa-search"></i>Search</button>
                                    </span>
                                </div>
                                <!--./form-group -->
                            </div>
                            <!--./col-lg-6 -->
                        </div>
                        <!--./row -->
                        <?= form_close() ?>
                    </div>
                    <!--./search-form -->
                </div>
            </div>
            <!--./row -->

            <!-- Page Features -->
            <div class="row">
                <!-- Blog Entries Column -->
                <?php if (isset($events) && $events) { ?>
                    <?php foreach ($events as $values) { ?>
                        <div class="col-md-3 d-flex align-items-stretch">
                            <div class="card mb-4 news-item">
                                <div class="media-item">
                                    <a href="<?= site_url($centre->alias . '/events/details/' . $values->alias) ?>">
                                        <?php if (file_exists('./assets/uploads/photos/' . $values->photo)) { ?>
                                            <img src="<?= base_url('./assets/uploads/photos/' . $values->photo) ?>" alt="<?= $values->title ?>" />
                                        <?php } ?>
                                    </a>
                                </div>

                                <div class="card-body content">
                                    <h3>
                                        <a href="<?= site_url($centre->alias . '/events/details/' . $values->alias) ?>"><?= $values->title ?></a>
                                    </h3>
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
                    echo '<div class="col-md-12">There are no any event at the moment....</div>';
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