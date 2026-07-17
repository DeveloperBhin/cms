<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <ul>
                        <h4><?= $centre->title ?> : Photo Gallery</h4>
                            <li><a href="<?= site_url('') ?>"><i class="fa fa-home"></i> Home</a></li>
                            <li>
                                <a href="<?= site_url('galleries/') ?>">Photo Gallery</a>
                            </li>
                            <li><?= isset($gallery) ? $gallery->name : '' ?></li>
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
                <div class="col-md-12">
                    <div class="text-left">
                        <h3><?= isset($gallery) ? $gallery->name : '' ?></h3>
                    </div>
                    <!--./text-center -->
                </div>
                <!--./col-md-12 -->

                <div class="col-md-12 mt-2">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="7000" style="height: 500px !important;">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <?php if (isset($attachments) && $attachments) {
                                $serial = 1;
                                foreach ($attachments as $val) { ?>
                                    <div class="carousel-item <?= (($serial == 1) ? 'active' : '') ?>" style="height: 480px !important;">
                                        <!--image slide -->
                                        <?php
                                        if ($val->photo != '' && file_exists('./assets/uploads/photo/' . $val->photo))
                                            echo '<img style="height: 480px !important;" src="' . base_url('assets/uploads/photo/' . $val->photo) . '" class="d-block w-100" />'; ?>
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
                <!--./col-md-12 -->
            </div><!-- /.row -->
        </div>
        <!--./container -->
</section>