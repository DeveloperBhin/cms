@extends('site.inner')
@section('title')
{!! $service->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('services')}}">{{label('lbl_our_services')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($service->title) ,20) !!}</li>
@endsection

{{-- @section('page_title')
{!! $service->title  !!}
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
                                <span class="border-left-primary text-dark d-inline-block pl-1 ">
                                  <span class="border-left-secondary-thick d-inline-block pl-2 "> {!! $service->title !!}</span> 
                                </span>
                                </div>
                              </div>                
                            </h5>   
                          </div>

                        <div class="col-12 px-0 mt-2">
                            <div class="py-2 text-center">
                                <div class="d-inline-block rounded-slightt border-fadeddd border-bottom-primary p-3">
                                    <img style="width:80px; height:auto" src="{{asset('uploads/services/'.$service->icon)}}" alt="{{$service->title}}">
                                </div>
                            </div>
                            <div class="rich-text py-2">
                                {!! $service->content !!}
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