<!DOCTYPE html>
<html>

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title><?= (isset($title) ? $title : '') ?> | TARI</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
    <meta name="msapplication-TileImage" content="<?= base_url('assets/images/favicon/ms-icon-144x144.png') ?>">

    <link rel="canonical" href="<?= base_url() ?>">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta property="og:url" content="<?= base_url() ?>">
    <meta property="og:type" content="TARI Homepage">
    <meta property="og:title" content="TARI Homepage">
    <meta property="og:description" content="TARI">

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@" />
    <meta name="twitter:title" content="TARI Homepage">
    <meta name="twitter:description" content="">

    <!-- favicon -->
    <link rel="apple-touch-icon" sizes="57x57" href="<?= base_url('assets/img/favicon/apple-icon-57x57.png') ?>">
    <link rel="apple-touch-icon" sizes="60x60" href="<?= base_url('assets/img/favicon/apple-icon-60x60.png') ?>">
    <link rel="apple-touch-icon" sizes="72x72" href="<?= base_url('assets/img/favicon/apple-icon-72x72.png') ?>">
    <link rel="apple-touch-icon" sizes="76x76" href="<?= base_url('assets/img/favicon/apple-icon-76x76.png') ?>">
    <link rel="apple-touch-icon" sizes="114x114" href="<?= base_url('assets/img/favicon/apple-icon-114x114.png') ?>">
    <link rel="apple-touch-icon" sizes="120x120" href="<?= base_url('assets/img/favicon/apple-icon-120x120.png') ?>">
    <link rel="apple-touch-icon" sizes="144x144" href="<?= base_url('assets/img/favicon/apple-icon-144x144.png') ?>">
    <link rel="apple-touch-icon" sizes="152x152" href="<?= base_url('assets/img/favicon/apple-icon-152x152.png') ?>">
    <link rel="apple-touch-icon" sizes="180x180" href="<?= base_url('assets/img/favicon/apple-icon-180x180.png') ?>">
    <link rel="icon" type="image/png" sizes="32x32" href="<?= base_url('assets/img/favicon/apple-icon-120x120.png') ?>">

    <!-- Bootstrap core CSS -->
    <link href="<?= base_url('assets/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />

    <!-- owl carousel -->
    <link rel="stylesheet" href="<?= base_url('assets/css/owl.carousel.min.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/owl.theme.default.min.css') ?>">

    <!-- Font awesome css -->
    <link href="<?= base_url('assets/font-awesome/css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link rel="stylesheet" href="<?= base_url('assets/css/style.css') ?>" type="text/css" />
    <link rel="stylesheet" href="<?= base_url('assets/css/colors.css') ?>" type="text/css" />
</head>

<body>
    <div class="container main-wrapper">
        <header id="rs-header">
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="pull-left pl-2">
                                <div class="top-list d-inline-block">
                                    <ul class="list-unstyled">
                                        <li><a href="http://mail.tari.go.tz" target="_blank">Staff Mail</a></li>
                                        <li><a href="<?= site_url('contacts') ?>">Contact Us</a></li>

                                    </ul>
                                </div>
                                <div class="top-language d-inline-block p-1">
                                    <a href="#" style="color: white">Kiswahili</a> |
                                    <a href="#" style="color: white">English</a>
                                </div>
                            </div>
                            <!--./pull -right -->
                        </div>
                        <!--./col-md-8 -->

                        <div class="col-md-4">



                        </div>
                        <!--./col-md-4-->
                    </div><!-- ./row -->
                </div>
                <!--./container -->
            </div>
            <!--./header-top-bar -->

            <div class="logo-bar">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-2 col-sm-2 col-xs-2 float-left text-left py-2">
                            <a href="" title="TARI">
                                <img src="<?= base_url('assets/img/emblem.png') ?>" alt="" class="text-center text-sm-left" height="90" />
                            </a>
                        </div>
                        <!--./col-md-2 -->

                        <div class="col-md-8 col-sm-8 col-xs-8 pl-xs-0 text-center pt-4 pt-xs-0">
                            <h5 class="mb-0 title">The United Republic of Tanzania</h5>
                            <h1 class="mb-1 title title-main align-items-center">
                                Tanzania Agricultural Research Institute
                            </h1>
                        </div>
                        <!--./col-md-8 -->

                        <div class="col-md-2 col-sm-2 col-xs-2 text-right px-0">
                            <a href="" title="TARI">
                                <img src="<?= base_url('assets/img/logo.png') ?>" alt="" height="90" />
                            </a>
                        </div>
                        <!--./col-md-2 -->

                    </div><!-- ./row -->
                </div>
                <!--./container -->
            </div><!-- Top Bar -->

            <div class="main-navigation" id="navbar">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 menu">
                            <nav class="main-menu" role="navigation">
                                <ul class="nav-menu">
                                    <li class="menu-item <?= ($this->uri->segment(1) == '') ? 'current-menu-item' : '' ?>">
                                        <a class="text-uppercase" href="<?= site_url('') ?>">Home</a>
                                    </li>

                                    <li class="menu-item <?= ($this->uri->segment(1) == 'centres') ? 'current-menu-item' : '' ?> menu-item-has-children">
                                        <a class="text-uppercase" href="#">TARI Centres</a>
                                        <ul class="sub-menu">
                                            <li class="">
                                                <a href="#" title="Main Centres">Main Centres</a>
                                                <?php display_centres(1) ?>
                                            </li>

                                            <li class="">
                                                <a href="#" title="Other Centres">Sub Centres</a>
                                                <?php display_centres(0) ?>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="menu-item <?= ($this->uri->segment(2) == 'staff') ? 'current-menu-item' : '' ?>">
                                        <a class="text-uppercase" href="<?= site_url($centre->alias . '/staff') ?>">Staff</a>
                                    </li>

                                    <li class="menu-item <?= ($this->uri->segment(1) == 'programmes') ? 'current-menu-item' : '' ?> menu-item-has-children">
                                        <a class="text-uppercase" href="#">Research</a>
                                        <?php display_centre_research($centre->alias) ?>
                                    </li>

                                    <li class="menu-item <?= ($this->uri->segment(1) == 'services') ? 'current-menu-item' : '' ?> menu-item-has-children">
                                        <a class="text-uppercase" href="#">Products & Services</a>
                                        <?php display_centre_service($centre->alias) ?>
                                    </li>

                                    <li class="menu-item <?= ($this->uri->segment(1) == 'technogies') ? 'current-menu-item' : '' ?> menu-item-has-children">
                                        <a class="text-uppercase" href="#">Technologies</a>
                                        <?php display_centre_technologies($centre->alias) ?>
                                    </li>

                                    <li class="menu-item <?= ($this->uri->segment(2) == 'publications') ? 'current-menu-item' : '' ?> menu-item-has-children">
                                        <a class="text-uppercase" href="#">Publications</a>
                                        <?php display_centre_menu_header('publications', $centre->alias) ?>
                                    </li>

                                    <?php
                                    $news_active = '';
                                    if ($this->uri->segment(1) == 'videos')
                                        $news_active = 'current-menu-item';
                                    ?>
                                    <li class="menu-item <?= $news_active ?> menu-item-has-children">
                                        <a class="text-uppercase" href="#">Media Centre</a>
                                        <ul class="sub-menu">
                                            <li class=""><a href="<?= site_url($centre->alias . '/news') ?>" title="News">News</a></li>
                                            <li class=""><a href="<?= site_url($centre->alias . '/events') ?>" title="Events">Events</a></li>
                                            <li class=""><a href="<?= site_url($centre->alias . '/galleries') ?>" title="Photo Gallery">Photo Gallery</a></li>
                                            <li class=""><a href="<?= site_url($centre->alias . '/videos') ?>" title="Video Documentaries">Video Documentaries</a></li>
                                        </ul>
                                    </li>

                                    <li class="menu-item <?= ($this->uri->segment(2) == 'contants') ? 'current-menu-item' : '' ?>">
                                        <a class="text-uppercase" href="<?= site_url($centre->alias . '/contacts') ?>">Contacts</a>
                                    </li>

                                </ul>
                            </nav><!-- .main-menu -->
                        </div><!-- .menu -->
                    </div><!-- .row -->
                </div><!-- .container -->
            </div><!-- .main-navigation -->
        </header><!-- Header -->