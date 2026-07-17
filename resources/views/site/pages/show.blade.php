@extends('site.inner')

@section('title')
    {!! $page->title !!}
@endsection



@section('page_content')


@section('breadcrumb')
    {{ breadcrumb() }}
@endsection
<div class="">
    <div class="col-12">
        <div class="col-12 py-3">
            <div class="row">
                <div class=" @if($page->has_sidebar == 1) col-lg-8 @else col-lg-12 @endif page-content mb-2">
                    <div class="row pr-md-5">
                        <div class="col-12 px-0 py-1 border-bottom-faded">
                            <h5 class="pl-0  text-uppercase "> 
                                <div class="d-block  py-1    lines position-relative">
                                  <div class="pr-sm-2 py-1 text-primary  position-relative"> 
                                    <span class="border-left-primary text-bold d-inline-block  pl-1 ">
                                        <span class="border-left-secondary-thick pl-2  d-inline-block">{!! $page->title !!}</span> 
                                    </span>
                                  </div>
                                </div>                
                            </h5>   
                        </div>
                        <div class="col-12 px-0 mt-2">
                            <div class="rich-text py-2">
                                
                                <?php 
                                    $content = $page->content;
                                    // demo pages to shift to live with breaking image links
                                    //http://localhost/uploads/text-editor/images/organization_1654703666.png
                                    $local = 'http://localhost/uploads';
                                    $test = 'http://staging1.eganet.go.tz/utumishi/uploads';
                                    if(strpos($content, $local) !== false) $content = str_replace($local,asset('uploads'),$content);
                                    if(strpos($content, $test) !== false) $content = str_replace($test,asset('uploads'),$content);
                                ?>

                                {!! $content !!}
                            </div>
                        </div>
                    </div>
                </div>
                @if($page->has_sidebar == 1)
                <div class="col-lg-4 px-0">
                    @include('site.includes/sidebar')
                </div>
                @endif
            </div>
        </div>
    </div>
</div>
@stop
