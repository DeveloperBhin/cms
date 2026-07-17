

<header class="col-12 px-0  mb-0 bg-header-trans bg-radial-gradient-transparent-white-inverteddd">

    <div class="faded h-100 w-100 position-absolute top-left bg-white parallax-banner"
        style="background:urll({{ asset('site/images/flag.jpg') }}); background-size: cover; background-position: center;"
        data-offset="80px">
    </div>
    <div class="header-bg h-100 w-100 position-absolute top-left"></div>
    <div class="header-bg-2 h-100 w-100 position-absolute top-left"></div>

    <!-- top navbar -->
    <div class="col-12  bg-dark-fadeddd">
        <div class="container px-0">
            <div class="row top_nav px-0 pb-0">

                <div class="col-12 px-0  text-primary text-bold d-flex mx-auto justify-content-end align-items-center">

                    <ul class="d-none d-lg-flex always-dark-text align-items-center pt-1 ">
                        {!! App\Models\MenuItem::getMenu('top_menu') !!}
                    </ul>

                    <ul class="list-inline d-flex align-items-center pt-1">
                        @if (curlang() == '_en')
                            <li class="list-inline-item px-2"><a
                                    href="{{ url('language/sw') }}"class="text-bold text-primary">SWAHILI</a></li>
                        @else
                            <li class="list-inline-item px-2"><a
                                    href="{{ url('language/en') }}"class="text-bold text-primary">ENGLISH</a></li>
                        @endif
                        <li class="list-inline-item  pr-2 ">
                            <div class="search-form px-1 d-flex align-items-center justify-content-center">
                                <form
                                    class="form-inline rounded-medium border-primaryy bg-dark-light border-faded my-0 overflow-hidden py-0 mr-auto"
                                    action="{{ url('search') }}" style="height:30px">
                                    <input class="form-control border-0 bg-none text-primary" type="search"
                                        @if (isset($term)) value="{{ $term }}" @endif
                                        name="search" placeholder="Search" aria-label="Search" />
                                    <button type="submit"
                                        class="text-primary   border-left faded btn bg-white-transparent"
                                        name="button">
                                        <i class="fas fa-search fa-1x"></i>
                                    </button>
                                </form>
                            </div>
                        </li>
                    </ul>

                </div>

            </div>
        </div>

    </div>
    <!-- /top navbar -->

    <!-- top middle -->
    <div class="px-0 pb-1 pt-0 position-relative bg-header-trans">
        <!-- <div class="slash-color-1 position-absolute" style="width:166px; height:100%; left:15.5%"> </div>
        -->


        <div class="col-md-12 mt-0  top-middle   ">
            <div class="container px-0 position-relative">

                <div class="row">
                    <div class="col-3 col-lg-2 float-left text-left my-auto">
                        <a href="{{ url('/') }}">
                            <img src="{{ asset('site/images/emblem.png') }}" alt="Tanzania emblem"
                                class="mx-auto img-fluid" style="width: 80px" />
                        </a>
                    </div>

                    <div class="col-6 col-lg-8 text-center my-auto">
                        <div class="p-2 px-4">
                            <h6
                                class="mb-1 text-shadow-light text-primary d-none d-md-block title font-weight-bold align-items-center ">
                                {{ label('lbl_site_subtitle') }}
                            </h6>
                            <h6
                                class="mb-0 text-shadow-light text-primary mt-2 d-none d-lg-block font-weight-bold align-items-center ">
                                {{ label('lbl_site_sub_subtitle') }}
                            </h6>

                            <h3 class="mb-0 text-bold text-shadow-light  title align-items-center text-primary ">
                                {{ label('lbl_site_title') }}
                            </h3>


                        </div>
                    </div>

                    <div
                        class="col-3 col-lg-2 float-right text-right my-auto d-flex justify-content-end align-items-center">
                        <a href="index.html"><img src="{{ asset('site/images/icon/logo.png') }}" alt=""
                                class="mx-auto img-fluid" style="width: 150px" /></a>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <!-- top middle -->


    <!-- top bottom -->
    <div class="col-12 px-0 bg-white top-fixed border-bottom-secondary" style="padding-bottom:2px; margin-bottom:2px;">
        <div
            class="col-md-12 col-xs-12 main-menu bg-primary-dark d-flex border-top  position-relative active justify-content-center align-items-center">
            <!-- HEADER -->
            <nav class="navbar main-navigation py-1 py-lg-0 medium-text p-0  mx-lg-5 justify-content-start align-items-center"
                id='cssmenu'>
                {{-- <div id="head-mobile"></div> --}}
                <div class="menu-button py-2 py-lg-0 w-100 d-flex align-items-center text-secondary d-lg-none">
                    <i class="menu-icon  fa fa-bars mr-2" style="font-size: 25px;"></i>
                    <span class="text-secondary faded bold-600">MENU</span>
                </div>

                <ul class="m-0 capitalize-parent-itemsss d-lg-flex">
                    <li class=""><a class="nav-link" href="{{ url('/') }}"><span class="fa fa-home text-md">
                            </span></a></li>
                    {!! App\Models\MenuItem::getMenu('main_nav') !!}
                </ul>
            </nav>
            <!-- /HEADER -->
        </div>
        <div class="col-12 d-lg-none border-bottom-primary"></div>
    </div>
    <div class="bg-white position-absolute z-index-2" style="height: 2px; bottom:0"></div>
    <!-- /top bottom -->




</header>

