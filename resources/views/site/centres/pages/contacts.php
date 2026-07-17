<script src='https://www.google.com/recaptcha/api.js'></script>

<section class="page-wrapper">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <h4><?= $centre->title ?></h4>
                        <ul>
                            <li><a href="<?= site_url('') ?>"><i class="fa fa-home"></i> Home</a></li>
                            <li>Contacts</li>
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
                <div class="col-lg-6" id="contactsUs">
                    <div class="card bg-light-grey">
                        <div class="card-body p-2">
                            <h3 class="font-weight-bold" style="color: #424242;">Contact Us</h3>
                            <p><i>If you have any inquiry and would like to get in contact with us, you are kindly
                                    welcome to fill out the following online form. </i></p>

                            <p><i style="color: #088c4a; font-weight: 600;">Note: * Required fields</i></p>
                        </div>
                    </div>
                    <!--./card -->
                    <div class="mt-4"></div>

                    <?php if ($this->session->flashdata('message') != "") {
                        echo $this->session->flashdata('message');
                    } ?>

                    <?= form_open(uri_string()) ?>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input name="full_name" class="form-control" placeholder="Full name *" required />
                                <span style="color: red;"><?= form_error('full_name'); ?></span>
                            </div>
                            <!--./form-group -->
                        </div>
                        <!--./col-md-12 -->
                    </div>
                    <!--./row -->

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input name="email" type="email" class="form-control" placeholder="Email *" required />
                                <span style="color: red;"><?= form_error('email'); ?></span>
                            </div>
                            <!--./form-group -->
                        </div>
                        <!--./col-md-12 -->
                    </div>
                    <!--./row -->

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input name="telephone" class="form-control" placeholder="Telephone *" required />
                                <span style="color: red;"><?= form_error('telephone'); ?></span>
                            </div>
                            <!--./form-group -->
                        </div>
                        <!--./col-md-12 -->
                    </div>
                    <!--./row -->

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input name="subject" class="form-control" placeholder="Subject *" required />
                                <span style="color: red;"><?= form_error('subject'); ?></span>
                            </div>
                            <!--./form-group -->
                        </div>
                        <!--./col-md-12 -->
                    </div>
                    <!--./row -->

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <textarea name="message" class="form-control" placeholder="Message*" rows="5" required></textarea>
                                <span style="color: red;"><?= form_error('message'); ?></span>
                            </div>
                            <!--./form-group -->
                        </div>
                        <!--./col-md-12 -->
                    </div>
                    <!--./row -->

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <?php echo form_reset('reset', 'Reset', array('class' => "btn btn-danger btn-xs")); ?>
                                <?php echo form_submit('submit', 'Send', array('class' => "btn btn-primary btn-xs")); ?>
                            </div>
                            <!--./form-group -->
                        </div>
                        <!--./col-md-12 -->
                    </div>
                    <!--./row -->
                    <?= form_close() ?>
                </div>
                <!--./col-lg-6 -->

                <div class="col-md-6">
                    <?php
                    if (isset($centre) && $centre)
                        echo '<div class="pb-4">' . $centre->contacts . '</div>';
                    ?>
                </div>
                <!--./col-lg-6 -->
            </div>
            <!--./row -->
        </div>
        <!--./container -->
    </div>
    <!--./content -->
</section>