
<div class="d-none d-md-block sticky-top " style="z-index:0 !important">
  <div class="pressside mb-3 ">
    <div class="pressside-heading text-primary border-bottom-faded p-1 px-2">
      <h5 class="pl-0   text-uppercase section-heading bg-none bg-white-transparent-hover-secondary   rounded-slightt pr-lg-5"> 
        <a href="{{url('/news')}}" class="d-block  py-1    lines position-relative">
          <div class="pr-sm-2 py-1 text-primary  position-relative"> 
            <!-- <i class="fa fa-cog pr-2  align-self-center"></i>  -->
            <span class="border-left-primary text-bold  pl-1 ">
              <span class="border-left-secondary-thick pl-2 text-nowrap">{{label('lbl_news_and_events')}}</span> 
            </span>
            <span class="position-absolute view-all">
              <i class="fa fa-arrow-right"> </i>
              <!-- <span class="text-small text-nowrap d-inline-block pl-2 ">View All </span>  -->
            </span>
          </div>
        </a>                
      </h5>  
    </div>
  
    <div class="pressside-body p-2 ">
      <?php $key_ = -1?>
      @foreach($news_and_events as $key => $news_or_event)
        @break(++$key_ > 1)
        <?php $type = isset($news_or_event->event_date)? 'events':'news'?>
        <a href="{{url($type.'/'.$news_or_event->slug)}}" class="col mb-1 cursor-pointer zoom-container show-more-content-news p-2 d-flex border-bottom box-shadow  bg-white last-no-border align-items-center "  style="min-height:110px"> 
          <div class="col-3 col-md-4 px-0 text-center d-flex flex-column justify-content-center pr-0 border-rightt " >
            <div class="overflow-hidden box-shadow-slight">
              <div class="square-container  image my-0 hover-text-primary background-image" 
              style="background-image:url('{{ asset('uploads/'.$type.'/'.$news_or_event->photo_url)}}'); " >  <div class="dark-overlay"></div></div>
            </div>
           {{-- <div class="text-uppercase text-muted"><span class="small"> {{$type}} </span></div>  --}}
          </div>
          <div class="col-9 col-md-8 pl-3 text-left "> 
            <?php  $date = $type=='events'? $news_or_event->event_date : $news_or_event->created_at; ?>
            <div class="">
              <span class="small text-faded "> {!! date('d M Y', strtotime($date)) !!} | <span class="text-uppercase">{{$type}}</span></span>
            </div>
            <div class="hover-text-primary ">{!! str_limit(strip_tags($news_or_event->title), 50) !!} </div>
            {{-- <div class="text-uppercase text-muted small ">{{$type}}</div> --}}
          </div>
        </a>
      @endforeach
    </div>
  
    <div class="pressside-footer  p-2 px-md-3 d-flex justify-content-between">
        <a href="{{url('/news')}}" class="readmore bg-white border d-inline-block px-3 py-2 rounded-mediumm  box-shadow-slight text-primary hover-bg-primary cursor-pointer  ">
          <span>{{label('lbl_news')}} </span>
          <i class="fa fa-chevron-right"></i>
        </a> 
        <a href="{{url('/events')}}" class="readmore bg-white border d-inline-block px-3 py-2 rounded-mediumm  box-shadow-slight text-primary hover-bg-primary cursor-pointer  ">
          <span>{{label('lbl_events')}} </span>
          <i class="fa fa-chevron-right"></i>
        </a>     
    </div>
  
  </div>
  
  <div class="pressside  ">
  
  
    <div class="pressside-body border-leftt p-2">
      @if($registration_section)
        <div class="mb-2 box-shadow border-faded  p-0 h-100 flow-hidden  has-hover-text-primary">
          <div class="h-100 pr-lg-4  d-flex px-0 bg-white rounded-slightttt align-items-center hover-bg has-hover-bounce">
            <div class=" w-100 d-flex flex-column align-items-center">
              <div class="d-flex flex-column align-items-center px-2 cursor-pointer">
                <div class="hover-bounce text-primary image-with-overlay" style="font-size:3.5em">
                <img src="{{asset('uploads/more-infos/'.$registration_section->icon)}}" 
                class="hover-bounce" style="width: 60px; height:auto">
                </div>
                <div class="text-primary text-uppercase mt-2 text-bold"> {{$registration_section->title}} </div>
                <div class="border-bottom-primary-thick my-2 w-40"></div>
                <h6 class="faded cursor-pointer border-top-primary-thick p-3 p-lg-4 text-center"> {!!$registration_section->content!!}</h6>
                <div class="my-2 text-center text-white">
                  <a href="{{$preference->registration_link ?? ''}}" class="readmore w-100 has-hover-bounce border bg-primary hover-bg-primary d-inline-block px-3 py-2 rounded-medium text-white   cursor-pointer  ">
                    <div> 
                      <span>{{label('lbl_register')}}</span>
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

  </div>
</div>