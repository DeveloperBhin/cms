@extends('site.inner')

@section('title')
{!! $event->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('events')}}">{{label('lbl_events')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($event->title) ,20) !!}</li>
@endsection

{{-- @section('page_title')
{!! $event->title !!}
@endsection --}}

@section('page_content')

<div class="about-page  main-container container-fluid bg-white">
    <div class="col-12">
        
        <div class="col-12 py-3">
            <div class="row">
                <div class="col-lg-8 page-content my-2">

                    <div class="row pr-md-5">
                        
                        <div class="col-12 py-1 px-0 border-bottom-faded">
                            <h5 class="pl-0  text-uppercase "> 
                              <div class="d-block  py-1 lines position-relative">
                                <div class="pr-sm-2 py-1 text-primary  position-relative"> 
                                <span class="border-left-primary text-dark  pl-1 ">
                                  <span class="border-left-secondary-thick pl-2"> {!! $event->title !!}</span> 
                                </span>
                                </div>
                              </div>                
                            </h5>   
                        </div>

                        <div class="col-12 px-0 py-3 border-bottom">
                            <div class="row mx-0">
                                <span class="pr-3 bold-600 d-inline-block">
                                    <span class="fa fa-calendar mr-1"></span> 
                                    {!! date('d M, Y', strtotime($event->event_date)) !!}
                                </span>
                                <span class="pr-3 bold-600 text-muted d-inline-block">
                                    <span class="fa fa-clock mr-1"></span> 
                                    {!! $event->event_time !!} 
                                </span>
                            </div>
                        </div>
                        <div class="col-12 px-0 py-3 border-bottom">
                            <div class="row mx-0">
                                <span class="pr-3 bold-600 d-inline-block">
                                    <span class="fa fa-map-marker-alt mr-1"></span> 
                                    {!! $event->location !!}
                                </span>
                            </div>
                        </div>
                        <div class="col-12 px-0 py-3 mb-3 border-bottom">
                            <div class="row mx-0">
                                <span class="pr-3 bold-600 d-inline-block">
                                    <span class="fa fa-address-card mr-1"></span> 
                                    {!! $event->contact !!}
                                </span>
                            </div>
                        </div>
                        <div class="col-12 px-0 mt-2">
                            <div class="rich-text py-2">
                                {!! $event->content !!}
                            </div>
                            <div class="py-2">
                                <img class="img-fluid" src="{{asset('uploads/events/'.$event->photo_url)}}" alt="{{$event->title}}">
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