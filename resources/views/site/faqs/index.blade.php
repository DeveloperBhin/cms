@extends('site.inner')

@section('title')
  {!! label('lbl_faq') !!} 
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_faq_short') }}</li>
@endsection

{{-- @section('page_title')
{!! label('lbl_faq') !!} 
@endsection --}}

@section('page_content')

<div class="about-page main-container container-fluid bg-white">
  <div class="col-12">
  
      <div class="row mx-0">
          <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

            
              <div class="row mx-0">
                <div class="col-12 py-1 px-0 border-bottom-faded">
                  <h5 class="pl-0  text-uppercase "> 
                    <div class="d-block  py-1 lines position-relative">
                      <div class="pr-sm-2 py-1 text-primary  position-relative"> 
                      <span class="border-left-primary text-dark  pl-1 ">
                        <span class="border-left-secondary-thick pl-2">{!! label('lbl_faq') !!}</span> 
                      </span>
                      </div>
                    </div>                
                  </h5>   
                </div>
                      
                @if(count($faqs))
                  <div class="col-12 mt-3 px-0">
                    <div id="accordion">

                      @foreach($faqs as $key => $faq)     

                        <div class="card">
                          <div class="card-header">
                              <h5 class="mb-0">
                              <button class="border-0 w-100 bg-transparent text-left text-primary bold-600 @if($key != 0) collapsed @endif" data-toggle="collapse" data-target="#collapse{{$key}}" aria-expanded="true" aria-controls="collapse{{$key}}">
                                {!! str_limit($faq->question ,120) !!}
                              </button>
                              </h5>
                          </div>
                      
                          <div id="collapse{{$key}}" class="collapse @if($key == 0) show @endif" aria-labelledby="headingOne" data-parent="#accordion">
                              <div class="card-body">
                                  <div>
                                    {!! str_limit(strip_tags($faq->answer),300) !!}
                                  </div>
                                  <div class="pt-2">
                                      <a class="fs-1rem bold-600 text-faded" href="{{ url('faqs/'.$faq->slug) }}">
                                          <i class="fa fa-angle-double-right"> </i> {{label('lbl_readmore')}}
                                      </a>
                                  </div>
                              </div>
                          </div>
                        </div>

                      @endforeach

                    </div>
                  </div>

                  <div class="col-12 px-0 pt-4 d-flex justify-content-center">
                    {!! $faqs->render() !!}
                  </div>

                @else
                  <div class="col-12 px-0">
                    {{ label('lbl_no_information') }}
                  </div>
                @endif
                  
              </div>

          </div>
          <div class="col-lg-4 px-0 mt-2">
              @include('site.includes/sidebar')
          </div>
      </div>
      
  </div>

</div>

@stop

