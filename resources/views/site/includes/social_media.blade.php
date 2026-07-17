<div class="social-media-side d-none d-lg-block position-fixed">
  @foreach($social_links as $key => $social_link )
   <div @if($preference->show_loading) class="page-content-container move-up d-none" style="--order:{{1.5+$key+1/2}}" @endif>
      <a target="_blank" rel="noopener noreferrer" href="{{ $social_link->url }}"
        class="social-media-box mb-1 d-flex align-items-center justify-content-end">
        <div style="transform:translateX(20px)" 
          class="h-40 d-flex align-items-center rounded-left-medium social-text bg-primary text-white">
          {{ $social_link->title_en }}
        </div>
        <div class="box-40 position-relative round d-flex box-shadow-slight cursor-pointer justify-content-center
          bg-white border text-primary align-items-center">
          <i class="fab fa-{{$social_link->title_en}}"></i>
        </div>
      </a>
   </div>
  @endforeach
</div>


