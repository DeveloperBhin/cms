@extends('site.layout')
@section('title')
    {{ label('lbl_site_title') }} - {{ label('lbl_home') }}
@endsection

@section('content')


    <div class="home-page-bodyyyy">

        <div class="bg-dark-light position-relative">
            <!-- <div id="particles-js" class="h-100 w-100 top-left position-absolute"></div> -->
            <div class=" position-relative">
                <div class="row p-1  ">

                    <div class="col-lg-12 pb-3 pb-lg-0 px-0  home-slider overflow-hidden  position-relative ">
                        <div class="slider-bg ">
                            <div class="slider-holder rounded-slightttt overflow-hidden">
                                <div id="homeCarousel"
                                    class="carousel slide carousel-fade h-100 bg-secondary divide position-relative"
                                    data-ride="carousel">
                                    <!-- <ol class="carousel-indicators">
                                                  <li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
                                                  <li data-target="#homeCarousel" data-slide-to="1"></li>
                                                  <li data-target="#homeCarousel" data-slide-to="2"></li>
                                                </ol> -->
                                    <div class="slider-nav-controls w-100 px-3  position-absolute">
                                        <div class="slider-nav-arrows ">
                                            <span class="nav-control p-3 hover-icon-left px-4 float-left"
                                                href="#homeCarousel" role="button" data-slide="prev">
                                                <span class="icon" aria-hidden="true"> <i
                                                        class="fa fa-chevron-left "></i></span>
                                                <span class="sr-only">Previous</span>
                                            </span>
                                            <span class="nav-control hover-icon-right p-3 px-4 float-right"
                                                href="#homeCarousel" role="button" data-slide="next">
                                                <span class="icon" aria-hidden="true"> <i
                                                        class="fa fa-chevron-right "></i></span>
                                                <span class="sr-only">Next</span>
                                            </span>
                                        </div>
                                    </div>

                                    @if (count($slideshow))
                                        <div class="carousel-inner ">
                                            @foreach ($slideshow as $key => $photo)
                                                <div class="carousel-item @if ($key == 0) active @endif">
                                                    <div class="full-hd-container">
                                                        <img class="d-block w-100"
                                                            src="{{ asset('uploads/gallery/' . $photo->filename) }}"
                                                            alt="First slide">
                                                    </div>
                                                    <div
                                                        class="bg-primary-gradient-faded w-100 px-2 text-center px-lg-4 py-2  carousel-text text-white min-height-md-240
                    d-flex align-items-end ">
                                                        <h6 class="d-none d-sm-block text-center w-100 pb-4">
                                                            {{ $photo->content }} </h6>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    @endif


                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- quick scroll -->
                <!-- <span class="d-none d-sm-flex scroll-to-content
      text-white position-absolute cursor-pointer" style="font-size:1.5em;"><i class="fa fa-chevron-down"></i>
                                      </span> -->
                <!-- an anchor for scrolling to content -->
                <span class="position-absolute" style="height:0px; width:0px; bottom:25%" id="homeContentTether"></span>
            </div>

            <div class=" position-relative pb-2">
                <div class="row p-1 ">
                    <div class="col-md-4 px-0 pl-lg-2">
                        <div class=" mb-2  p-0 h-100 flow-hidden last-no-border has-hover-text-primary">
                            <div
                                class="h-100 d-flex px-0 bg-white rounded-slight align-items-center hover-bg has-hover-bounce">
                                <div class=" w-100 d-flex flex-column align-items-center">
                                    @if ($dg)
                                        <div class="d-md-flex d-lg-block align-items-center">
                                            <div class="col px-5">
                                                <div class="card-image-square text-center"
                                                    style="background-image: url('');">
                                                    <img src="{{ asset('uploads/administration/' . $dg->photo_url) }}"
                                                        class="w-50 ">
                                                </div>
                                            </div>

                                            <div class="col text-center  text-md-left text-lg-center ">
                                                <h5 class="text-bold my-2"> {{ $dg->salutation . ' ' . $dg->fullname }}
                                                </h5>
                                                <h6> {{ $dg->title }}</h6>
                                                <div class="d-flex d-md-block d-lg-flex pt-2 ">
                                                    <div class="part-leftttt col my-md-2 my-lg-0"><a
                                                            href="{{ url('administration/' . $dg->slug . '/' . $dg->id) }}"
                                                            class="btn hover-bg text-whiteee border-dark rounded">Biography</a>
                                                    </div>
                                                    <span class="part-centerrrr col-1 d-md-none d-lg-inline text-faded">
                                                        <div>|</div>
                                                    </span>
                                                    <div class="part-rightttt col my-md-2 my-lg-0"><a
                                                            href="{{ url('welcome') }}"
                                                            class="btn hover-bg text-whiteee border-dark  rounded ">Welcome
                                                        </a> </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 px-0 pl-lg-2">
                        {{-- {% set item = { title:"WELCOME", details: 'Artist and content creators should register in the NPS system in
          order to be associated with their content and rights ',image:"images/icons/icons-04.png"}%} --}}
                        @if ($welcome_note)
                            <div class=" mb-2  p-0 h-100 flow-hidden last-no-border has-hover-text-primary">
                                <div
                                    class="h-100 d-flex px-0 bg-white rounded-slight align-items-center hover-bg has-hover-bounce">
                                    <div class=" w-100 d-flex flex-column align-items-center">
                                        <div class="d-flex flex-column align-items-center px-2 cursor-pointer">
                                            <div class="hover-bounce text-primary image-with-overlay"
                                                style="font-size:3.5em"> <img
                                                    src="{{ asset('site/images/icons/icons-04.png') }}" class="hover-bounce"
                                                    style="width: 60px; height:auto"></div>

                                            {{--                  <div class="text-primary text-uppercase mt-2 text-bold"> {{$welcome_note->title}} </div> --}}
                                            <div class="border-bottom-primary-thick my-2 w-40"></div>
                                            <h6
                                                class="faded cursor-pointer border-top-primary-thick p-3 p-lg-4 text-center">
                                                {!! str_limit($welcome_note->content, 200) !!}
                                            </h6>
                                            <div class="my-2 text-center text-white">

                                                <a href="{{ url('welcome') }}"
                                                    class="readmore w-100 has-hover-bounce border bg-primary hover-bg-primary d-inline-block px-3 py-2 rounded-medium text-white   cursor-pointer  ">
                                                    <div>
                                                        <span>View More</span>
                                                        <i class="fa fa-chevron-right"></i>
                                                    </div>

                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>

                    <div class="col-md-4 px-0 pl-lg-2">
                        <div class=" mb-2  p-0 h-100 flow-hidden last-no-border has-hover-text-primary">
                            <div
                                class="h-100 d-flex px-0 bg-white rounded-slight align-items-center hover-bg has-hover-bounce">
                                <div class=" w-100 d-flex flex-column align-items-center">
                                    @if ($secretary)
                                        <div class="d-md-flex d-lg-block align-items-center">
                                            <div class="col px-5">
                                                <div class="card-image-square text-center"
                                                    style="background-image: url('');">
                                                    <img src="{{ asset('uploads/administration/' . $secretary->photo_url) }}"
                                                        class="w-50">
                                                </div>
                                            </div>

                                            <div class="col text-center  text-md-left text-lg-center ">
                                                <h5 class="text-bold my-2">
                                                    {{ $secretary->salutation . ' ' . $secretary->fullname }} </h5>
                                                <h6> {{ $secretary->title }}</h6>
                                                <div class="d-flex d-md-block d-lg-flex pt-2 ">
                                                    <div class="part-leftttt col my-md-2 my-lg-0"><a
                                                            href="{{ url('administration/' . $secretary->slug . '/' . $secretary->id) }}"
                                                            class="btn hover-bg text-whiteee border-dark rounded">Biography</a>
                                                    </div>
                                                    <span class="part-centerrrr col-1 d-md-none d-lg-inline text-faded">
                                                        <div>|</div>
                                                    </span>
                                                    <div class="part-rightttt col my-md-2 my-lg-0"><a
                                                            href="{{ url('welcome') }}"
                                                            class="btn hover-bg text-whiteee border-dark  rounded ">Welcome
                                                        </a> </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bg-white">
                    <div class="">
                        <div class="container pt-2 pt-lg-2">
                            <div class="row pb-1">

                                @php
                                    $items = [
                                        [
                                            'title' => 'Technologies Developed',
                                            'icon' => 'fa-microchip',
                                            'image' => 'site/images/tari-icon/technology.jpeg',
                                            'slug' => 'technologies-developed',
                                        ],
                                        [
                                            'title' => 'Centers',
                                            'icon' => 'fa-flask',
                                            'image' => 'site/images/tari-icon/center.jpeg',
                                            'slug' => 'centres',
                                        ],
                                        [
                                            'title' => 'Research Labs',
                                            'icon' => 'fa-flask',
                                            'image' => 'site/images/tari-icon/research.jpeg',
                                            'slug' => 'research-labs',
                                        ],
                                        [
                                            'title' => 'Varieties Developed',
                                            'icon' => 'fa-seedling',
                                            'image' => 'site/images/tari-icon/varieties.jpeg',
                                            'slug' => 'varieties-developed',
                                        ],
                                        [
                                            'title' => 'Farmers Cornel',
                                            'icon' => 'fa-tractor',
                                            'image' => 'site/images/tari-icon/farmer.jpeg',
                                            'slug' => 'farmers-corner',
                                        ],
                                    ];
                                @endphp

                                <div class="col-lg-12">
                                    <div class="position-relative rounded-sligh bg-white overflow-hidden">
                                        <div class="text-center pb-1">
                                            <!-- Optional heading or content -->
                                        </div>
                                        <div class="row p-0 m-0 pr-lg-5 justify-content-center">

                                            <!-- Left empty space -->
                                            <div class="col-md-1"></div>

                                            <!-- Items -->
                                            @foreach ($items as $item)
                                                @php
                                                    $url = 'pages/' . $item['slug'];
                                                @endphp
                                                <div
                                                    class="col-md-2 d-flex align-items-center p-1 pt-0 border-color-secondary 
                                            cursor-pointer last-no-border-element text-center position-relative">
                                                    <div class="border-element my-auto bg-primary position-absolute faded"
                                                        style="width:1px; height:50%; right:0; top:0; bottom:0;"></div>
                                                    <a href="{{ url($url) }}"
                                                        class="d-flex position-relative has-hover-bounce flex-column align-items-center rounded-slight justify-content-between p-2 py-1 hover-bg-secondary-faded bg-white-transparent">
                                                        <div>
                                                            <div class="icon text-primary image-with-overlay"
                                                                style="font-size:3.5em">
                                                                <img src="{{ asset($item['image']) }}"
                                                                    class="hover-bounce"
                                                                    style="width: 50px; height:auto;">
                                                            </div>
                                                            <div class="text-bold text-primary my-1">
                                                                <span
                                                                    class="bg-white-transparentt d-inline-block p-1 rounded-slightttt">
                                                                    <span class="px-1"> {{ $item['title'] }} </span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            @endforeach

                                            <!-- Right empty space -->
                                            <div class="col-md-1"></div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- quick scroll -->
                <!-- <span class="d-none d-sm-flex scroll-to-content
    text-white position-absolute cursor-pointer" style="font-size:1.5em;"><i class="fa fa-chevron-down"></i>
                                    </span> -->
                <!-- an anchor for scrolling to content -->
                <span class="position-absolute" style="height:0px; width:0px; bottom:25%" id="homeContentTether"></span>
            </div>

            <div class="bg-dark-lightttt py-5 parallax-banner position-relative "
                style="background:url('site/images/bg/bg6.jpg'); background-size:cover; background-repeat: no-repeat;"
                data-offset="250px" data-rate="0.2">
                <div class="bg-gradient-transparent-white  position-absolute top-left h-100 w-100" style="opacity:1">
                    <a href="{{ url('news') }}" class="d-block ">
                        <h5 class="pb-3 pb-lg-3 section-heading">
                            <span class="text-primary text-bold py-1 d-inline-block lines position-relative">
                                <div class="p-sm-2 py-1 text text-primary" style="margin-left: 70px;">
                                    <i class="fa fa-bell pr-2  align-self-center "></i>{{ label('lbl_news') }}
                                </div>
                                <span class="position-absolute view-all ">
                                    <span class="pl-2 more d-inline-block"
                                        style=" white-space: nowrap;">{{ label('lbl_view_more') }}</span>
                                </span>
                            </span>
                        </h5>
                    </a>
                </div>
                <div class="container py-4">

                    <div class="owl-carousel owl-theme owl-loaded parallax-banner position-relative bg-none">
                        <!-- <div class="bg-radial-gradient-transparent-white h-100 w-100 position-absolute top-left"></div> -->
                        <!-- <div class="bg-white h-100 w-100 position-absolute top-left faded"></div> -->
                        <div class="owl-stage-outer ">
                            @if ($news_list)
                                <div class="owl-stage " style="display:flex">
                                    @foreach ($news_list as $key => $news)
                                        <div
                                            class="owl-item text-center has-hover-bounce last-no-border-element text-center position-relative">
                                            <div class=" px-2 px-md-4 ">
                                                <div
                                                    class="hover-bg   pointer-hover rounded-slightttt position-relative show-details-on-hover">
                                                    <div class="full-hd-container overflow-hidden position-relative d-flex align-items-center
                      justify-content-center rounded-slightttt unround-bottom-on-hover"
                                                        style="background-image: url({{ asset('uploads/news/' . $news->photo_url) }});">
                                                        <div
                                                            class=" d-flex align-items-center justify-content-center bg-primary position-relative">
                                                            {{-- <i class="fa fa-expand"></i> --}}
                                                            <!-- <i class="fa fa-play"></i> -->
                                                        </div>
                                                        <div class="container-overlay position-absolute w-100 h-100"></div>
                                                        <div
                                                            class="small text-white faded text-right position-absolute p-2 w-100 item-date">
                                                            {!! date('d M Y', strtotime($news->created_at)) !!}
                                                        </div>
                                                    </div>
                                                    <a href="{{ url('news/' . $news->slug) }}"
                                                        class="d-flex w-100 bg-white align-items-center rounded-bottom-slight p-2 p-lg-3 pt-2">
                                                        <span class="d-inline-block text-muted">
                                                            <div> {{ str_limit($news->title, 40) }} </div>
                                                        </span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            @endif

                            <div class="owl-controls pt-1"></div>
                            <!-- get button here -->
                            <div class="d-none ">
                                <span class="hover-icon-left owl-prev-template">
                                    <div class="icon box-30"> <svg xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 80 91.6">
                                            <polygon class="fill-secondary"
                                                points="52.51 45.8 77.5 2.5 2.5 45.8 77.5 89.1 52.51 45.8" />
                                        </svg></div>
                                </span>
                                <span class="hover-icon-right owl-next-template">
                                    <div class="icon box-30 "> <svg xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 80 91.6">
                                            <polygon class="fill-secondary"
                                                points="27.49 45.8 2.5 2.5 77.5 45.8 2.5 89.1 27.49 45.8" />
                                        </svg></div>
                                </span>
                            </div>

                        </div>
                        <div class="custom-owl-nav bg-danger overflow-visible position-absolute w-100"></div>
                    </div>

                </div>
            </div>

            <div class=" page-section py-4 p-lg-5 mx-0 bg-white">


                <div class="row mx-0 px-0">
                    <div class="col-lg-4 py-4 py-lg-0 lines-section rounded-medium badge-section text-white ">
                        @if ($events)
                            <div class="h-100 d-flex flex-column pb-3" data-aos="fade-up">
                                <a href="{{ url('events') }}" class="d-block">
                                    <h5 class="pb-3 pb-lg-3 section-heading">
                                        <span class="text-gray text-bold py-1 d-inline-block lines position-relative">
                                            <div class="p-sm-2 py-1 text text-primary">
                                                <i
                                                    class="fa fa-bell pr-2  align-self-center"></i>{{ label('lbl_events') }}
                                            </div>
                                            <span class="position-absolute view-all text-primary">
                                                <span class="pl-2 more d-inline-block"
                                                    style=" white-space: nowrap;">{{ label('lbl_view_more') }}</span>
                                            </span>
                                        </span>
                                    </h5>
                                </a>
                                </a>
                                @foreach ($events as $key => $event)
                                    <div class="col px-0 border-bottom-accent-thin-faded no-border-last has-new-blink">
                                        <div
                                            class="d-flex align-items-center  h-100 w-100 p-2 pointer-hover  position-relative mb-1">
                                            <a href="{{ url('events/' . $event->slug) }}"
                                                class="d-flex w-100  align-items-center p-0">
                                                <div class="col-4 p-0">
                                                    <div class="full-hd-container rounded overflow-hidden">
                                                        <img src="{{ asset('uploads/events/' . $event->photo_url) }}">

                                                    </div>
                                                </div>
                                                <div class="p-2">
                                                    <div> {{ str_limit($event->title, 40) }} </div>
                                                    <div
                                                        class="small text-muted text-right position-absolute w-100 item-date">
                                                        {!! date('d', strtotime($event->created_at)) !!}</div>
                                                </div>
                                            </a>
                                            <div class="small text-muted text-right position-absolute w-100 item-date">
                                                {!! date('M Y', strtotime($event->created_at)) !!}</div>
                                        </div>
                                        @if (strtotime('+1 week', strtotime($event->created_at)) > strtotime('now'))
                                            <span class="fa fa-certificate text-danger position-absolute new-blink">
                                            </span>
                                        @endif
                                    </div>
                                @endforeach
                            </div>
                        @endif
                    </div>
                    <div class="col-lg-4 py-4 py-lg-0 lines-section section-heading">
                        @if ($announcements)
                            <div class="h-100 d-flex flex-column" data-aos="zoom-in">
                                <a href="{{ url('announcements') }}" class="d-block">
                                    <h5 class="pb-3 pb-lg-3 section-heading">
                                        <span class="text-primary text-bold py-1 d-inline-block lines position-relative">
                                            <div class="p-sm-2 py-1 text">
                                                <i
                                                    class="fa fa-bullhorn pr-2  align-self-center"></i>{{ label('lbl_announcements') }}
                                            </div>
                                            <span class="position-absolute view-all">
                                                <i class="fa fa-arrow-right"> </i> <span class="pl-2 more d-inline-block"
                                                    style=" white-space: nowrap;">{{ label('lbl_view_more') }}</span>
                                            </span>
                                        </span>
                                    </h5>
                                </a>
                                @foreach ($announcements as $key => $announcement)
                                    <div class="col px-0 pb-1">
                                        <div
                                            class="d-flex align-items-center bg-light box-shadow  rounded-slight hover-bg h-100 w-100 p-2 pointer-hover  position-relative">
                                            <a href="{{ url('announcements/' . $announcement->slug) }}"
                                                class="d-flex w-100 list-item  align-items-center">
                                                <i
                                                    class="fa fa-angle-double-right  px-2 pr-3  text-faded text-primary align-self-center"></i>
                                                <i
                                                    class="fa fa-question-circle px-2 pr-3  text-faded text-primary align-self-center"></i>
                                                <span class="d-inline-block text-gray">
                                                    <div> {{ str_limit($announcement->title, 40) }} </div>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endif
                    </div>
                    <div class="col-lg-4 py-4 py-lg-0 lines-section">
                        @if ($quicklinks)
                            <div class="h-100 d-flex flex-column" data-aos="zoom-in">
                                <a href="#" class="d-block">
                                    <h5 class="pb-3 pb-lg-3 section-heading">
                                        <span class="text-primary text-bold py-1 d-inline-block lines position-relative">
                                            <div class="p-sm-2 py-1 text">
                                                <i
                                                    class="fa fa-globe pr-2  align-self-center"></i>{{ label('lbl_quick_links') }}
                                            </div>
                                            <span class="position-absolute view-all">
                                                {{-- <i class="fa fa-arrow-right"> </i>  --}}
                                            </span>
                                        </span>
                                    </h5>
                                </a>

                                @foreach ($quicklinks as $key => $link)
                                    <div class="col px-0 pb-1">
                                        <div
                                            class="d-flex align-items-center bg-light box-shadow rounded hover-bg h-100 w-100 p-2 pointer-hover  position-relative">
                                            <a href="{{ $link->url }}"
                                                class="d-flex w-100 list-item  align-items-center" target="_blank">
                                                <i
                                                    class="fa fa-angle-double-right  px-2 pr-3  text-faded text-primary align-self-center"></i>
                                                <i
                                                    class="fa fa-bullseye px-2 pr-3  text-faded text-primary align-self-center"></i>
                                                <span class="d-inline-block text-gray">
                                                    <div> {{ $link->title }} </div>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                @endforeach

                            </div>
                        @endif
                    </div>

                </div>
            </div>



            <div class="page-section py-1 p-lg-5 mx-0 bg-white">
                <div class="row mx-0 px-0">



                    <div class="col-lg-6 py-4 py-lg-0">
                        <div class="h-100 d-flex flex-column" data-aos="zoom-in">

                            <a href="#" class="d-block">
                                <h5 class="pb-3 section-heading">
                                    <span class="text-primary text-bold py-1 d-inline-block lines position-relative">
                                        <div class="p-sm-2 py-1 text">
                                            <i class="fa fa-question-circle pr-2"></i>Help Center
                                        </div>
                                        <span class="position-absolute view-all">
                                            <i class="fa fa-arrow-right"></i>
                                        </span>
                                    </span>
                                </h5>
                            </a>


                            <div class="col px-0 pb-1">
                                <a href="{{ url('contacts') }}">
                                <div
                                    class="d-flex align-items-center bg-light box-shadow rounded hover-bg h-100 w-100 p-3 pointer-hover">
                                    <i class="fa fa-phone-alt text-primary mr-3"></i>
                                    <div>
                                        <h6 class="mb-1">Contact Support</h6>
                                        <small class="text-muted">24/7 helpline for assistance</small>
                                    </div>
                                </div>
                                </a>
                            </div>
                            
                                  

                            <div class="col px-0 py-2">
                                <a href="{{ url('publications') }}">
                                <div
                                    class="d-flex align-items-center bg-light box-shadow rounded hover-bg h-100 w-100 p-3 pointer-hover">
                                    <i class="fa fa-file-alt text-primary mr-3"></i>
                                    <div>
                                        <h6 class="mb-1">Documentation</h6>
                                        <small class="text-muted">Guides and manuals</small>
                                    </div>
                                </div>
                            </a>
                            </div>

                            <div class="col px-0 py-2">
                                <a href="https://youtube.com/@habarizakilimo9610?si=aKE7p_9TclNuE3dI" target="_blank">
                                    <div
                                        class="d-flex align-items-center bg-light box-shadow rounded hover-bg h-100 w-100 p-3 pointer-hover">
                                        <i class="fa fa-video text-primary mr-3"></i>
                                        <div>
                                            <h6 class="mb-1">Tutorials</h6>
                                            <small class="text-muted">Video walkthroughs</small>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <div class="col px-0 pt-2">
                                <a href="{{ url('events') }}">
                                <div
                                    class="d-flex align-items-center bg-light box-shadow rounded hover-bg h-100 w-100 p-3 pointer-hover">
                                    <i class="fa fa-calendar-check text-primary mr-3"></i>
                                    <div>
                                        <h6 class="mb-1">Upcoming Training</h6>
                                        <small class="text-muted">Workshops and sessions</small>
                                    </div>
                                </div>
                                </a>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-6 py-4 py-lg-0 pe-lg-4">
                        <div class="h-100 rounded-medium bg-light" data-aos="fade-up">

                            <div class="p-3 pb-0">
                                <h5 class="section-heading text-primary">
                                    <span class="d-inline-block position-relative">
                                        <i class="fa fa-university pr-2"></i>TARI gallary
                                    </span>
                                </h5>
                            </div>


                            <div class="owl-carousel owl-theme sam1">



                                @if (count($smallGalary))
                                    @foreach ($smallGalary as $key => $photo)
                                        <div class="item">
                                            <div class="card border-0">
                                                <img src="{{ asset('uploads/gallery/' . $photo->filename) }}"
                                                    class="card-img-top" alt="Crop Improvement">

                                            </div>
                                        </div>
                                    @endforeach
                                @endif

                            </div>
                            <div class="owl-carousel owl-theme sam1">



                                @if (count($smallGalary))
                                    @foreach ($smallGalary as $key => $photo)
                                        <div class="item">
                                            <div class="card border-0">
                                                <img src="{{ asset('uploads/gallery/' . $photo->filename) }}"
                                                    class="card-img-top" alt="Crop Improvement">

                                            </div>
                                        </div>
                                    @endforeach
                                @endif

                            </div>
                        </div>
                    </div>

                </div>


                <!-- partiners start here -->
                <div class="col-lg-12  py-lg-0 pe-lg-4">
                    <!-- HR at the TOP -->
                    <hr class="my-3" style="border-color: rgba(0,0,0,0.1);">

                    <div class="h-100 rounded-medium" data-aos="fade-up">
                        <div class="owl-carousel owl-theme sam">
                            @foreach ($partners as $partner)
                            <a href="{{ $partner->url }}" target="_blank">
                                <div class="item text-center">
                                    <div class="p-3 rounded d-flex flex-column align-items-center justify-content-center h-100"
                                        style="background: transparent;">
                                        <img src="{{ url('/uploads/partners/' . $partner->photo_url) }}"
                                            alt="{{ $partner->title }}" style="width: 60px; height: auto;"
                                            class="mb-2">
                                        <div class="text-primary font-weight-bold small">{{ $partner->title }}
                                        </div>
                                    </div>
                                </div>
                                </a>
                            @endforeach
                        </div>
                    </div>

                    <!-- HR at the BOTTOM -->
                    <hr class="my-3" style="border-color: rgba(0,0,0,0.1);">
                </div>
                <!-- partiners end here -->
            </div>

        @stop
