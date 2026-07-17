@extends('site.inner')
@section('title')
{!! $category->title !!}
@endsection

@section('breadcrumb')
{{breadcrumb()}}
@endsection

{{-- @section('page_title')
{!! $category->title !!}
@endsection --}}

@section('page_content')
<div class="bg-gradient-white-light h-100 w-100 position-absolute top-left"></div>
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
                        <span class="border-left-secondary-thick pl-2 "> {!! $category->title !!}</span> 
                      </span>
                      </div>
                    </div>                
                  </h5>   
                </div>
      
                      
                @if (count($publications))

                  <div class="col-12 px-0 mt-2">
                    <div class="row">
                      @foreach ($publications as $publication)
          
                          <div class="col-lg-6 col-sm-6 col-12 mb-4">
                            <div class=" h-100  box-shadow-slight border-faded rounded-slight  overflow-hidden  bg-white ">
                              <a href="{!! asset('uploads/documents/'.$publication->file)!!}" target="_blank" class="has-hover-bounce p-2">
                                <div class="card-body image d-flex align-items-center">
                                  <h6 class="text-md">
                                    <i class="fa fa-download hover-bounce"></i>
                                  </h6>
                                  <div class="ml-3">
                                    <h6 class="card-text text-muted">{!! date('d M, Y', strtotime($publication->published_date)) !!}</h6>
                                    <h6 class="card-text bold-600">{!! $publication->title !!}</h6>
                                  </div>
                                </div>
                              </a>
                            </div>
                          </div>

                      @endforeach
                    </div>
                  </div>

                  <div class="col-12 pt-5 pb-3 d-flex justify-content-center">
                    {!! $publications->render() !!}
                  </div>

                @else
                  <div class="col-12 bold-600 px-0 py-3 text-muted">
                    {{label('lbl_no_information')}}
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
