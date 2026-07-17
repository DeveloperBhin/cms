<!-- Footer -->
<footer class="footer pd-section">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h3 class="footer-title">TARI Contacts</h3>
                    <div class="text-widget">
                        <p><strong>Dodoma Head Office</strong><br />
                            Makutupora, Arusha Road<br />
                            P.O. Box 1571, DODOMA.<br />
                            info@tari.go.tz & dg@tari.go.tz
                        </p>
                    </div>
                    <!--./text-widget -->
                </div>
                <!--./col-md-3 -->

                <div class="col-md-2">
                    <h3 class="footer-title">Services</h3>
                    <?php display_services() ?>
                </div>
                <!--./col-md-3 -->

                <div class="col-md-3">
                    <h3 class="footer-title">Products</h3>
                    <?php display_products('footer') ?>
                </div>
                <!--./col-md-3 -->

                <div class="col-md-2">
                    <h3 class="footer-title">Useful Links</h3>
                    <?php display_footer('footer3') ?>
                </div>
                <!--./col-md-3 -->

                <div class="col-md-2">
                    <h3 class="footer-title">Related Links</h3>
                    <?php display_footer('footer4') ?>
                </div>
                <!--./col-md-3 -->
            </div>
            <!--./row -->
        </div>
        <!--./container -->
    </div>
    <!--./footer-top -->

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="copyright">
                        <p>© <?= date('Y') ?> Tanzania Agricultural Research Institute</p>
                    </div>
                </div>
                <!--./col-md-4 -->
                <div class="col-md-8 col-sm-6">
                    <div class="text-right ft-bottom-right">
                        <div class="footer-bottom-share">
                            <ul>
                                     <a href="#" target="_blank"><i class="fa fa-whatsapp"></i></a>
                                </li>

                                <li>
                                    <a href="https://www.facebook.com/tari.tanzania" target="_blank"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="https://www.instagram.com/invites/contact/?i=6jv9mheclmzt&utm_content=ktpzzu6" target="_blank"><i class="fa fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a href="https://youtube.com/channel/UCdzJRDHtKkK_K10wpFGkzeg" target="_blank"><i class="fa fa-youtube"></i></a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
                <!--./col-md-8 -->
            </div>
            <!--./row -->
        </div>
        <!--./container -->
    </div>
    <!--./footer-bottom -->
</footer>
<!--./footer -->
</div>
<!--./container -->

<!-- jQuery -->
<script src="<?= base_url('assets/jquery/jquery.min.js') ?>"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<?= base_url('assets/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>

<!-- Bootstrap Dropdown Hover JS -->
<script src="<?= base_url('assets/js/bootstrap-dropdownhover.min.js') ?>"></script>

<!-- carousel -->
<script src="<?= base_url('assets/js/owl.carousel.min.js') ?>"></script>

<script>
    //slide carousel
    // $(".carousel").owlCarousel({
    //     autoplay: true,
    //     autoplayTimeout: 2500,
    //     smartSpeed: 2000,
    //     loop: true,
    // });


    //owl carousel
    $(".owl-carousel").owlCarousel({
        autoplay: true,
        autoplayTimeout: 2500,
        smartSpeed: 2000,
        loop: true,
        dots: false,
        nav: false,
        margin: 10,
        mouseDrag: true,
        items: 6,
        autoplayHoverPause: true,
        autoHeight: true,
        navText: ['<i class="fa fa-arrow-left"></i>', '<i class="fa fa-arrow-right"></i>'],
        responsiveClass: true,
        responsive: {
            0: {
                items: 1
            },
            480: {
                items: 2
            },
            768: {
                items: 3
            },
            1200: {
                items: 4
            },
            1200: {
                items: 5
            },
            1200: {
                items: 6
            },
        }
    });
</script>

</body>

</html>