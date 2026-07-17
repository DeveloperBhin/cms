@extends('site.inner')

@section('title')
{!! $seedDealer->name !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item" aria-current="page">{{label('lbl_seed_dealers')}}</li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($seedDealer->name) ,20) !!}</li>
@endsection

{{-- @section('page_title')
{!! $seedDealer->name !!}
@endsection --}}

@section('page_content')

<div class="about-page main-container container-fluid bg-white">
    <div class="col-12">
    
        <div class="row">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <div class="row mx-0 has-shifting-underline">
                    <div class="col-12 py-1 px-0 ">
                        <h5 class="pb-2 position-relative page-title text-uppercase text-primary hover-text-primary"> 
							<span class="d-inline-block py-2 position-relative text-bold text-primary">
							  <span class="px-2222"> {!! $seedDealer->name !!}</span>
							</span>
							<div class="d-flex w-100 position-absolute bottom-left">
							<div class="shifting-underline-1 padding-1 bg-secondary"></div>
							<div class="shifting-underline-2 padding-1 bg-primary"></div>
							</div>
						  </h5>   
					</div>
                        
                    <div class="col-12 ">

                        <?php  
                            $fields=[
                                'name',
                                'registration_number',
                                'registration_date',
                                'expire_date',
                                'phone',
                            ]
                        ?>
                        <div class="row">
                            @foreach($fields as $key => $field)
                                @if(isset($seedDealer[$field]) && trim($seedDealer[$field])!=null)
                                    <div class="col-md-12 last-no-border py-2 border-bottom-faded ">
                                        @if(strpos(strtolower(label('lbl_'.$field)), 'lbl_') == false)
                                            <div class="faded text-capitalize">{{label('lbl_'.$field)}}</div>
                                        @else
                                            <div class="faded text-capitalize">{{str_replace("_", " ", $field)}}</div>
                                        @endif
                                        @if((strpos($field, 'date') !== false)) 
                                            <div class="text-dark mt-0">{{date('jS M Y',strtotime($seedDealer[$field]))}}</div>
                                        @else 
                                            <div class="text-dark mt-0"> {{str_replace("_", " ", $seedDealer[$field])}} </div>
                                        @endif
                                    </div>
                                @endif
                            @endforeach
                        </div>
                      
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-4 px-0">
                @include('site.includes/sidebar')
            </div>
        </div>
        
    </div>

</div>

@stop
