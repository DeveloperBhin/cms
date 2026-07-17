@extends('site.inner')
@section('title')
{!! $campaign->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('campaigns')}}">{{label('lbl_our_campaigns')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($campaign->title) ,20) !!}</li>
@endsection

{{-- @section('page_title')
{!! $campaign->title  !!}
@endsection --}}

@section('page_content')

<div class="about-page  main-container container-fluid bg-white">
    <div class=" ">
        
        <div class="col-12 py-3">
            <div class="row">
                <div class="col-lg-8 page-content my-2">

                    <div class="row pr-md-5">
                        <div class="col-12 py-1 px-0 border-bottom-faded">
                            <h5 class="pl-0  text-uppercase "> 
                              <div class="d-block  py-1    lines position-relative">
                                <div class="pr-sm-2 py-1 text-primary  position-relative"> 
                                <span class="border-left-primary text-bold  pl-1 ">
                                  <span class="border-left-secondary-thick pl-2"> {!! $campaign->title !!}</span> 
                                </span>
                                </div>
                              </div>                
                            </h5>   
                        </div>
            
                        <div class="col-12 px-0 mt-2">
                            <div class="rich-text py-2">
                                {!! $campaign->content !!}
                            </div>
                            <div class="py-3 text-center">
                                <img class="img-fluid" src="{{asset('uploads/campaigns/'.$campaign->icon)}}" alt="{{$campaign->title}}">
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

</div>

@stop