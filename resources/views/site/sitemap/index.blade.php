@extends('site.inner')

@section('title')
	{!! label('lbl_sitemap') !!}
@endsection

@section('css-content')
	<style type="text/css">
		.sitemap-list ul ul{
			margin-left:1.5rem !important;
		}
		.sitemap-list ul ul li{
			padding: 3px 0px;
			list-style-type: square;
		}
		.sitemap-list ul ul ul li{
			list-style-type: disc;
		}
		.sitemap-list ul ul ul ul li{
			list-style-type: circle;
		}
	</style>
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_sitemap') }}</li>
@endsection

{{-- @section('page_title')
{!! label('lbl_sitemap') !!}
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
							  <span class="border-left-secondary-thick  d-inline-block pl-2 "> {{ label('lbl_sitemap') }}</span> 
							</span>
							</div>
						  </div>                
						</h5>   
					  </div>
                        
                    <div class="col-12 px-0 mt-2 sitemap-list">
                        <ul class="list-unstyled ml-0">
							<li><a class="hover-color-primary" href="{{url('/')}}"> <b><i class="fas fa-home"></i> {{label('lbl_home')}} </b> </a>
							@foreach(App\Models\MenuItem::where('parent','=',0)->get() as $menu)
	
						   <ul class="">
							 <li><a class="hover-color-primary" href="{{ url($menu->url) }}"> <b>{{ $menu->title }}</b> </a>
	
							   @if(App\Models\MenuItem::where('parent','=',$menu->id)->count() > 0)
							   <ul>
								 @foreach(App\Models\MenuItem::where('parent','=',$menu->id)->orderBy('position', 'ASC')->get() as $sub_menu)
									 <li><a class="hover-color-primary" href="{{ url($sub_menu->url) }}">  {{ $sub_menu->title }}</a></li>
	
									 @if(App\Models\MenuItem::where('parent','=',$sub_menu->id)->count() > 0)
									<ul>
										@foreach(App\Models\MenuItem::where('parent','=',$sub_menu->id)->orderBy('position', 'ASC')->get() as $sub_item_menu)
											<li><a class="hover-color-primary" href="{{ url($sub_item_menu->url) }}">  {{ $sub_item_menu->title }}</a></li>
										@endforeach
									</ul>
									@endif
								 @endforeach
							   </ul>
							   @endif
							 </li>
						   </ul>
						   @endforeach
						</ul>
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
