<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <h4><?= $centre->title ?></h4>
                        <ul>
                            <li><a href="<?= site_url('') ?>"><i class="fa fa-home"></i> Home</a></li>
                            <li><?= isset($category) ? $category->name : '' ?></li>
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
                <!--./col-lg-12 -->
            </div>
            <!--./row -->

            <!-- Page Features -->
            <div class="row">
                <!-- Blog Entries Column -->
                <?php if (isset($publications) && $publications) { ?>
                    <?php foreach ($publications as $values) { ?>
                        <div class="col-md-3 d-flex align-items-stretch">
                            <div class="card mb-4 news-item">

                                <div class="card-body content">
                                    <h3>
                                        <a href="<?= site_url($centre->alias . '/publications/details/' . $values->alias) ?>">
                                            <?= $values->title ?>
                                        </a>
                                    </h3>

                                    <ul class="meta">
                                        <li>
                                            <div class="post_date text-small font-weight-600">
                                                <i class="fa fa-calendar"></i> <?= date("jS M Y", strtotime($values->created_at)) ?>
                                            </div>
                                        </li>

                                        <li class="text-small font-weight-bold"></li>
                                    </ul>
                                    <!--./stm-event__meta -->
                                </div>
                                <!--./content -->
                            </div>
                            <!--./item_wr -->
                        </div>
                        <!--./col-md-3 -->
                    <?php } ?>
            </div>
            <!--./ publication_grid -->
        <?php } else {
                    echo '<div class="col-md-12">No any matching publication</div>';
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