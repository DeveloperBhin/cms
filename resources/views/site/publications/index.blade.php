@extends('site.inner')

@section('title')
{!! label('lbl_publications') !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_publications') }}</li>
@endsection

@section('page_title')
{!! label('lbl_publications') !!}
@endsection

@section('page_content')
<div class="bg-gradient-white-light h-100 w-100 position-absolute top-left"></div>
<div class="about-page main-container container-fluid bg-white">
	<div class="col-12">
	
		<div class="row">
			<div class="col-lg-12 px-0 my-2 page-content">

 
				<div class="row mx-0">
          <div class="col-12 py-1 px-0 border-bottom-faded">
            <h5 class="pl-0  text-uppercase "> 
              <div class="d-block  py-1 lines position-relative">
                <div class="pr-sm-2 py-1 text-primary  position-relative"> 
                <span class="border-left-primary text-dark  pl-1 ">
                  <span class="border-left-secondary-thick pl-2 ">{{ label('lbl_publications') }}</span> 
                </span>
                </div>
              </div>                
            </h5>   
          </div>

					@if (count($categories))
            <div class="col-12 px-0">
              <div class="row mx-0 mt-3">
                @foreach ($categories as $category)
                  <div class="col-lg-6 col-12 py-2"> 
                    <a href="{{ url('publications/'.$category->slug) }}" class="d-flex py-3 px-2 border w-100 h-100 align-items-center pointer-hover">
                        <i class="fa fa-chevron-right text-muted align-self-center fs-2rem"></i>
                        <i class="fa fa-folder-open c-folder align-self-center fs-2rem"></i>
                        <span class="d-inline-block pl-4 text-muted">
                          <div class="font-14 bold-600">{{label('lbl_publications')}}: {{ $category->documents_count }}</div>
                          <div class="heading-text text-primary bold-600"> {!! $category->title !!} </div>                        
                        </span>   
                      </a>    
                    </div>
                @endforeach
              </div>
            </div>

            <div class="col-12 pt-5 pb-3 d-flex justify-content-center">
              {!! $categories->render() !!}
            </div>

          @else
            <div class="col-12 bold-600">
              {{label('lbl_no_information')}}
            </div>
          @endif
											
				</div>
  
			</div>
		</div>
		
	</div>
</div>

@stop

