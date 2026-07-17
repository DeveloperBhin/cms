<section class="page-wrapper bg-white">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <ul>
                            <li><a href="<?= site_url('') ?>"><i class="fa fa-home"></i> Home</a></li>
                            <li>Staff</li>
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
                <div class="col-md-9">
                    <p>
                        Below are lists of staff
                    </p>
                </div>
                <!--./col-md-12 -->
            </div>
            <!--./row-->

            <div class="mt-4"></div>
            <div class="row">
                <?php if (isset($staffs) && $staffs) { ?>
                    <?php foreach ($staffs as $staff) { ?>
                        <div class="col-md-3 col-12 d-flex align-items-stretch">
                            <div class="card mb-4 item_wr">
                                <div class="thumbnail">
                                    <a href="<?= site_url($centre->alias . '/staff/profile/' . $staff->alias) ?>">

                                        <?php if ($staff->photo != '' && file_exists('./assets/uploads/staff/' . $staff->photo)) { ?>
                                            <img src="<?= base_url('./assets/uploads/staff/' . $staff->photo) ?>" alt="<?= $staff->name ?>">
                                        <?php } else { ?>
                                            <img src="<?= base_url('assets/img/profile.jpg') ?>" alt="<?= $staff->name ?>">
                                        <?php } ?>
                                    </a>
                                </div>
                                <!--./thumbnail -->

                                <div class="card-body content text-center">
                                    <h6>
                                        <a href="<?= site_url($centre->alias . '/staff/profile/' . $staff->alias) ?>"><?= $staff->name ?></a>
                                    </h6>
                                    <span class="text-uppercase"><?= $staff->position ?></span>
                                </div>
                                <!--./content -->
                            </div>
                            <!--./item_wr -->
                        </div>
                        <!--./col-md-3 -->
                    <?php } ?>
                <?php } ?>
            </div>
            <!--./row -->
        </div>
        <!--./container -->
    </div>
    <!--./content -->
</section>