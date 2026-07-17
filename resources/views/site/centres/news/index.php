<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <h4><?= $centre->title ?> : News</h4>
                        <ul>
                            <li><a href="<?= site_url('') ?>"><i class="fa fa-home"></i> Home</a></li>
                            <li>News</li>
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
                <?php if (isset($news) && $news) {
                    foreach ($news as $values) { ?>
                        <div class="col-md-3 d-flex align-items-stretch">
                            <div class="card mb-4 news-item">
                                <div class="media-item">
                                    <a href="<?= site_url($centre->alias . '/news/details/' . $values->alias) ?>">
                                        <?php if (!empty($values->photo) && file_exists('./assets/uploads/photo/' . $values->photo)) { ?>
                                            <img src="<?= base_url('./assets/uploads/photo/' . $values->photo) ?>" alt="<?= $values->title ?>" width="700" height="390">
                                        <?php } ?>
                                    </a>
                                </div>
                                <!--./thumbnail -->

                                <div class="card-body content">
                                    <h3>
                                        <a href="<?= site_url($centre->alias . '/news/details/' . $values->alias) ?>"><?= $values->title ?></a>
                                    </h3>

                                    <ul class="meta">
                                        <li>
                                            <div class="post_date text-small font-weight-600">
                                                <i class="fa fa-calendar"></i> <?= date("jS M Y", strtotime($values->created_at)) ?>
                                            </div>
                                        </li>

                                        <li class="text-small font-weight-bold">
                                            <i class="fa fa-comments-o"></i> 0
                                        </li>
                                    </ul>
                                    <!--./stm-event__meta -->
                                </div>
                                <!--./content -->
                            </div>
                            <!--./item_wr -->
                        </div>
                        <!--./col-lg-3 -->
                    <?php } ?>
            </div>
            <!--./row-->
        <?php } else {
                    echo '<div class="col-md-12">There are no any news at the moment....</div>';
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