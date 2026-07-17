@extends('site.inner')

@section('title')
  {!! $faq->question !!} 
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{ url('faqs') }}">{{ label('lbl_faq_short') }}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($faq->question) ,20) !!}</li>
@endsection

{{-- @section('page_title')
{!! $faq->question !!} 
@endsection --}}

@section('page_content')

<div class="about-page main-container container-fluid bg-white">
    <div class="col-12">
    
        <div class="row">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">
             
                <div class="row mx-0">

                    <div class="col-12 py-1 px-0 border-bottom-faded">
                        <h5 class="pl-0  text-uppercase "> 
                          <div class="d-block  py-1 lines position-relative">
                            <div class="pr-sm-2 py-1 text-primary  position-relative"> 
                            <span class="border-left-primary text-dark  pl-1 ">
                              <span class="border-left-secondary-thick pl-2"> {!! $faq->question !!} </span> 
                            </span>
                            </div>
                          </div>                
                        </h5>   
                    </div>
                        
                    <div class="col-12 px-0 mt-2">
                        <div class="rich-text">
                            {!! $faq->answer !!}
                        </div>
                    </div>
                    
                </div>

            </div>
            <div class="col-lg-4 px-0 mt-2">
                @include('site.includes/sidebar')
            </div>
        </div>
        
    </div>

</div>

@stop