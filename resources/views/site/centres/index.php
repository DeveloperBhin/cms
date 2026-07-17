<section class="bg-white border-bottom mt-2 pb-2">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="rs-about-centre">
                    <h5>About <?= $centre->title ?></h5>
                    <p><?= strip_all_tags(word_limiter($centre->contents, 100)) ?></p>

                    <a href="<?= site_url($centre->alias . '/about-us') ?>" class="btn btn-primary btn-sm font-weight-600 mt-1">Read more <i class="fa fa-angle-double-right"></i></a>
                </div>
            </div>
            <!--./col-md-3 -->
            <div class="col-md-7">
                <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="7000">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <?php if (isset($slides) && $slides) {
                            $serial = 1;
                            foreach ($slides as $slide) { ?>
                                <div class="carousel-item <?= (($serial == 1) ? 'active' : '') ?>">
                                    <!--image slide -->
                                    <?php
                                    if (file_exists('./assets/uploads/slides/' . $slide->photo))
                                        echo '<img src="' . base_url('assets/uploads/slides/' . $slide->photo) . '" class="d-block w-100" />'; ?>

                                    <!--slide caption -->
                                    <?php if (!empty($slide->caption)) { ?>
                                        <div class="carousel-caption">
                                            <h5><?= $slide->caption ?></h5>

                                            <?php if (!empty($slide->url)) { ?>
                                                <a href="<?= $slide->url ?>">Read More....</a>
                                            <?php } ?>
                                        </div>
                                        <!--./carousel-caption -->
                                    <?php } ?>
                                </div>
                                <!--./carousel-item -->
                        <?php
                                $serial++;
                            }
                        } ?>
                    </div>
                    <!--./carousel-inner -->

                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <!--./slider -->
            </div>
            <!--./col-md-9 -->
        </div>
        <!--./row -->
    </div>
    <!--./container-fluid -->
</section>
<!--./section -->

<?php if (isset($news) && $news) { ?>
    <section class="bg-white border-bottom mt-3 pb-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-page">
                        <h5>Latest News</h5>
                        <h6>
                            <a title="All news" href="<?= site_url($centre->alias . '/news') ?>">
                                <span>All News</span>
                                <i class=" fa fa-angle-right stm_icon"></i>
                            </a>
                        </h6>
                    </div>
                    <!--./title-page -->
                </div>
                <!--./col-md-12 -->
            </div>
            <!--./row -->

            <div class="row pd-section">
                <!-- Blog Entries Column -->
                <?php foreach ($news as $values) { ?>
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
            <!--./row -->
        </div>
        <!--./container -->
    </section>
    <!--./section -->
<?php } ?>

<?php if (isset($partners) && $partners) { ?>
    <section class="bg-white mt-3 mb-3 pb-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-page">
                        <h5>Partners</h5>
                    </div>
                    <!--./title-page -->
                </div>
                <!--./col-md-12 -->
            </div>
            <!--./row -->

            <div class="row">
                <div class="col-md-12">
                    <div class="owl-carousel owl-theme">
                        <?php foreach ($partners as $v) { ?>
                            <div class="partner">
                                <a href="<?= (!empty($v->url) ? $v->url : '#') ?>" target="_blank">
                                    <img class="img img-responsive" src="<?= base_url('/assets/uploads/photo/' . $v->logo) ?>" alt="<?= $v->name ?>" />
                                </a>
                            </div>
                            <!--./partner -->
                        <?php } ?>
                    </div>
                    <!--./owl-carousel -->
                </div>
                <!--./col-md-12 -->
            </div>
            <!--./row -->
        </div>
        <!--./container -->
    </section>
<?php } ?>
<!--./section -->