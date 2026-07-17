@extends('site.inner')

@section('title')
{{label('lbl_how_doi')}}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_how_doi') }}</li>
@endsection

{{-- @section('page_title')
{{ label('lbl_how_doi') }}
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
							<span class="border-left-primary text-dark  d-inline-block pl-1 ">
							  <span class="border-left-secondary-thick  d-inline-block pl-2">  {!! label('lbl_how_doi') !!} </span> 
							</span>
							</div>
						  </div>                
						</h5>   
					</div>
					
					@if (count($howdois))
						<div class="col-12 px-0">
							
							@foreach ($howdois as $howdoi)
								<div class="col px-0">  
									<div class="d-flex align-items-center h-100 w-100 pointer-hover border-bottom-secondary-thin position-relative">                                    
										<a href="{{url('howdois/'.$howdoi->slug)}}" class="py-3 d-flex w-100 list-item  align-items-center">
											<i class="fa fa-arrow-right pr-4 c-green align-self-center text-lg"></i>
											<i class="fa fa-question-circle text-primary pr-4 align-self-center text-lg"></i>
											<div class="">
												<div class="bold-600 text-muted text-sm">{!! label('lbl_posted').': '.date('d M, Y', strtotime($howdoi->created_at)) !!}</div>
												<div> {!! $howdoi->title !!} </div>
											</div>   
										</a>
									</div>
								</div>
							@endforeach

						</div>

						<div class="col-12 pt-5 pb-3 d-flex justify-content-center">
							{!! $howdois->render() !!}
						</div>
					@else
						<div class="col-12 px-0 py-3 bold-600">
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
