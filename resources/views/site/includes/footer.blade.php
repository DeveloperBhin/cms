<footer class="ega-footer parallax-banner  pb-0 pt-4  position-relative"
  style="background:url('site/images/bg/bg00.jpg'); background-size:cover; background-repeat: no-repeat;"
  data-offset="400px" data-rate="0.1">

  <div class="bg-gradient-with-transparent h-100 w-100 bg position-absolute top-left"> </div>
  <span class="scroll-to-top text-white cursor-pointer" style="font-size:1.5em;"><i class="fa fa-chevron-up"></i></span>

  <div class="main-container container-fluid px-lg-5">

    <div class="row pb-3">

      <div class="col-lg-6   no-padding-sm footer-content">

        <div class="row">

          <div class="col-md-6 d-flex flex-column no-padding-sm text-center mt-4 mt-md-0 text-lg-left mb-4">
            <h6 class="footer-heading  text-uppercase"> <span class="d-inline-block pb-2 mb-4 border-bottom-secondary">{{ label('lbl_location') }} </span> </h6>
            <div class="col pr-1 py-2 pr-md-4 min-height-250 ">
              <div class="h-100 w-100 rounded-slight bg-secondary box-shadow-slight p-1 ">
                <a class="d-block h-100 w-100 rounded-slight bg-accent box-shadow-slight  border-width-3 border-color-secondary overflow-hidden" href="">
                   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3950.5804355037094!2d36.676458!3d-8.0421178!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1857ab5a923e921f%3A0x7b190e54ffb23f82!2sTARI%20IFAKARA%20CENTRE!5e0!3m2!1sen!2stz!4v1748188874433!5m2!1sen!2stz" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                  @if(!empty($headquarter->maps))
                     {!! $headquarter->maps->url !!}
                  @endif
                </a>
              </div>

            </div>
          </div>
          <div class="modal fade" id="OpenMapModal-map" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
          style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                  </button>
                </div>
                <div class="modal-body pt-1 mt-0">
                  <div class="card-body map-container-full" style="">
                    
                      @if(!empty($headquarter->maps))
                          {!! $headquarter->maps->url !!}
                      @endempty
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-6 text-center text-lg-left">
            @if (!empty($headquarter))
              <h6 class="footer-heading d-inline-block pb-2 mb-4 border-bottom-secondary text-uppercase">
                {{label('lbl_contact')}}
              </h6>
              <p class="my-1">{{ label('lbl_site_title') }}</p>
              <p class="my-1">{{ label('lbl_site_subtitle') }} </p>
              @if($headquarter->physical_address)
                <p class="my-1 mb-3">{!! $headquarter->physical_address !!}</p>
              @endif
              @if ($headquarter->email)
              <p class="my-1"><span class="text-faded fa fa-envelope mr-2"></span>
                <a href="mailto:{{ $headquarter->email }}">{{ $headquarter->email }}</a>
              </p>
              @endif
              @if ($headquarter->toll_free)
                <p class="my-1">
                  <i class="fa fa-phone mr-2"></i>
                  <a href="tel:{{ $headquarter->toll_free }}">{{ $headquarter->toll_free }}</a>
                </p>
              @endif
              @if ($headquarter->phone)
                <p class="my-1">
                  <i class="fa fa-mobile-alt mr-2"></i>
                  <a href="tel:{{ $headquarter->phone }}">{{ $headquarter->phone }}</a>
                </p>
              @endif
              @if ($headquarter->fax)
                <p class="my-1">
                  <i class="fa fa-fax mr-2"></i>
                  <a href="fax:{{ $headquarter->fax }}">{{ $headquarter->fax }}</a>
                </p>
              @endif
            @endif
          </div>
        </div>
      </div>

      <div class="col-lg-6 px-0 px-xs-2 m-0">
        <div class="row footer-content  row px-xs-2   pb-0 mb-0">
          <div class="col-md-4 no-padding-sm text-center text-lg-left">
            <h6 class="footer-heading d-inline-block pb-2 mb-4 border-bottom-secondary text-uppercase">{{label('lbl_quick_links')}}</h6>
            @foreach ($quickLinks as $key => $link)
              @break($key > 6)
              <div class="pr-1 my-1"><a @if($link->link == 0) target="_blank" rel="noopener noreferrer" @endif href="{{ url($link->url) }}"> {{$link->title}} </a></div>
            @endforeach
          </div>

          <div class="col-md-4 no-padding-sm text-center text-lg-left">
            <h6 class="footer-heading d-inline-block pb-2 mb-4 border-bottom-secondary text-uppercase">{{label('lbl_related_links')}}</h6>
            @foreach ($relatedLinks as $key => $link)
              @break($key > 6)
              <div class="pr-1 my-1"><a @if($link->link == 0) target="_blank" rel="noopener noreferrer" @endif href="{{ url($link->url) }}"> {{$link->title}} </a></div>
            @endforeach
          </div>
          <div class="col-md-4 no-padding-sm text-center text-lg-left">
            <h6 class="footer-heading d-inline-block pb-2 mb-4 border-bottom-secondary text-uppercase">{{label('lbl_important_links')}}</h6>
            @foreach ($importantLinks as $key => $link)
              @break($key > 6)
              <div class="pr-1 my-1"><a @if($link->link == 0) target="_blank" rel="noopener noreferrer" @endif href="{{ url($link->url) }}"> {{$link->title}} </a></div>
            @endforeach
          </div>
          </div>         
        </div>
      </div>


    </div>

    <div class="col-12  p-0 container  mb-2">
      <h5 class=" footer-media text-center pb-0 mb-0  position-relative" style="z-index: 1;">
          @if (count($social_links) > 0)
                  @forelse($social_links as $social_link)
                  {{-- {{dump($social_link->title_en)}} --}}
                      @if($social_link->title_en == 'facebook')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-facebook-fpx-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'twitter')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-twitter px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'youtube')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-youtube px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'linkedIn')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-linkedin-in px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'blog')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-blogger-b px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'whatsapp')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-whatsapp px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'vimeo')
                          <a hrf="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-vimeo px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'skype')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-skype px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'tumblr')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-tumblr px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'snapchat')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-snapchat px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'flickr')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-flickr px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @if($social_link->title_en == 'instagram')
                          <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-instagram px-2" style="font-size: 25px;" aria-hidden="true"></i></a>
                      @endif
                      @endforeach
          @endif
      </h5>
    </div>


  </div>

  <!-- <div class="divide-3 position-relative overflow-hidden" style="height:100px; margin-top:-100px "> </div> -->

  <div class="site-info bg-primary-dark border-top-secondary position-relative z-index-2">


    <div class="col-md-12 pl-0 list no-padding-sm text-center  footer-links footer-nav p-3">
      <ul class="list-inline mb-0">
        {!! App\Models\MenuItem::getMenu('footer_menu') !!}
      </ul>
    </div>


    <div class="copyright text-white-50 p-3 footer-nav">
        <div class="text-center my-1">
            {{ label('lbl_designed')}}
          <a href="https://www.ega.go.tz" class="" target="_blank">{{ label('lbl_ega')}}</a>
            {{ label('lbl_content_maintained')}}
        </div>

        <div class="text-white-50 text-center">
            {{ label('lbl_copyright')}} © 2019 - {{ date('Y') }}, {{ label('lbl_right_reserved')}}
        </div>

    </div>

  </div>

</footer>
