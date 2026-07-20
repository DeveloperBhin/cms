<ul class="nav site-inner-navbar">

  {{-- @if(permission('*. .*')) --}}
  <li class="nav-item site-menu-caption">
        <label>Analytics</label>
    </li>

    <li data-username="dashboard Default cms" class="nav-item @php activeLink(['cms']) @endphp">
        <a href="{{ url('/cms')}}" class="nav-link ">
          <span class="site-micon"><i class="feather icon-home"></i></span>
          <span class="site-mtext">Dashboard</span>
        </a>
    </li>
  {{-- @endif --}}

  @if(permission(['*.staffemail.*','*.quick_links.*', '*.related_links.*','*.external_links.*','*.sponsors.*','*.social_links.*',
                '*.publication.*','*.pressreleases.*','*.publication_categories.*','*.tender.*','*.vacancies.*','*.galleries.*',
                '*.administration.*','*.administration_categories.*','*.management-groups.*','*.events.*','*.sports.*','*.event-categories.*',
                '*.pages.*','*.page-categories.*','*.faq.*']))
    <li class="nav-item site-menu-caption">
        <label>Site Contents</label>
    </li>
  @endif

  @if(permission(['*.backgrounds.*','*.campaigns.*','*.events.*','*.news.*','*.galleries.*','*.sliders.*']))
  <li data-username="backgrounds sliders news events galleries gallery photos videos audios media" class="nav-item site-hasmenu
    @php activeLink(['backgrounds','sliders','news','galleries','media','events','press-releases']) @endphp">
      <a href="javascript:" class="nav-link ">
        <span class="site-micon"><i class="fas fa-camera-retro"></i></span><span class="site-mtext">Media Center</span></a>
      <ul class="site-submenu">

        @if(permission('*.news.*'))
          <li class="@php activeLink(['news']) @endphp"><a href="{{ url('cms/news') }}"> News</a></li>
        @endif

        @if(permission('*.events.*'))
         <li class="@php activeLink(['events']) @endphp"><a href="{{ url('cms/events') }}"> Events</a></li>
        @endif

        @if(permission('*.press_releases.p*'))
          <li class="@php activeLink(['press_releases']) @endphp"><a href="{{route('cms.press_releases.index')}}">Press Releases</a></li>
        @endif
        @if(permission('*.announcements.*'))
          <li class="@php activeLink(['announcements']) @endphp"><a href="{{route('cms.announcements.index')}}">Announcements</a></li>
        @endif 
        
        @if(permission('*.press_releases.*'))
         <li class="@php activeLink(['press_releases']) @endphp"><a href="{{ url('cms/press_releases') }}"> Press Release</a></li>
        @endif

      
        
        {{-- @if(permission('*.sliders.*'))
        <li class="@php activeLink(['sliders']) @endphp"><a href="{{ url('cms/sliders') }}"> Home Sliders</a></li>
        @endif --}}

        @if(permission('*.galleries.*'))
         <li class="@php activeLink(['galleries', 'media']) @endphp"><a href="{{ url('cms/galleries') }}"> Galleries</a></li>
        @endif

    

      </ul>
  </li>
  @endif
{{-- 
  @if(permission(['*.dg_messages.*','*.quickinfos.*','*.projects.*','*.quotes.*','*.notices.*','*.speeches.*','*.press_releases.*','*.programmes.*','*.campus.*','*.services.*','*.faqs.*', '*.reserve.*', '*.welcome.*', '*.announcements.*','*.howdois.*', '*.mission.*','*.vision.*']))
      <li data-username="dg_messages quickinfos services projects notices speeches press releases information mission vision welcome announcements biography how do i"
        class="nav-item site-hasmenu @php activeLink(['dg_messages','quickinfos','projects','notices','speeches','services','background','faqs','welcome','reserve','howdois','announcements','mission','vision']) @endphp">
          <a href="javascript:" class="nav-link ">
            <span class="site-micon"><i class="feather icon-file-text"></i></span><span class="site-mtext">Informations</span></a>
          <ul class="site-submenu">
             @if(permission('*.welcome.*'))
                 <li class="@php activeLink(['welcome']) @endphp"><a href="{{ route('cms.welcome.index') }}">Welcome Note</a></li>
              @endif

             @if(permission('*.dg_messages.*'))
               <li class="@php activeLink(['dg_messages']) @endphp"><a href="{{route('cms.dg_messages.index')}}">DG Message</a></li>
             @endif

              @if(permission('*.announcements.*'))
                <li class="@php activeLink(['announcements']) @endphp"><a href="{{route('cms.announcements.index')}}">Announcements</a></li>
              @endif 


              @if(permission('*.speeches.*'))
                <li class="@php activeLink(['speeches']) @endphp"><a href="{{route('cms.speeches.index')}}">Speeches</a></li>
              @endif

              @if(permission('*.quotes.*'))
                <li class="@php activeLink(['quotes']) @endphp"><a href="{{route('cms.quotes.index')}}">Quotes</a></li>
              @endif 
          </ul>
      </li>
  @endif --}}

 @if(permission(['*.online_services.*','*.faqs.*','*.hospitals.*','*.partners.*','*.services.*','*.passengers.*','*.more-infos.*','*.seed-dealers.*','*.seed-varieties.','*.services.*','*.online_services.*','*.howdois.*','*.howdois.*']))
  <li data-username="online services passengers information corner how do i"
      class="nav-item site-hasmenu @php activeLink(['online_services','passengers','services','partners','howdois','more-infos','seed-dealers']) @endphp">
      <a href="javascript:" class="nav-link">
        <span class="site-micon"><i class="fa fa-cart-plus"></i></span><span class="site-mtext">{{label('lbl_site_title_short')}} Details</span></a>
      <ul class="site-submenu">

           @if(permission('*.centres.*'))
          <li class="@php activeLink(['centres']) @endphp"><a href="{{ url('cms/centres') }}"> Centres</a></li>
        @endif

        @if(permission('*.welcome.*'))
        <li class="@php activeLink(['welcome']) @endphp"><a href="{{ route('cms.welcome.index') }}">Welcome Note</a></li>
         @endif

          @if(permission('*.speeches.*'))
            <li class="@php activeLink(['speeches']) @endphp"><a href="{{route('cms.speeches.index')}}">Speeches</a></li>
          @endif

        {{-- @if(permission('*.services.*'))
          <li class="@php activeLink(['services']) @endphp"><a href="{{route('cms.services.index')}}"> Our Services</a></li>
        @endif --}}

        @if(permission('*.partners.*'))
          <li class="@php activeLink(['partners']) @endphp"><a href="{{route('cms.partners.index')}}"> Partners</a></li>
        @endif 
           @if(permission('*.faqs.*'))
          <li class="@php activeLink(['faqs']) @endphp"><a href="{{url('/cms/faqs')}}"> FAQs</a></li>
        @endif 

        {{-- @if(permission('*.seed-dealers.*'))
          <li class="@php activeLink(['seed-dealers']) @endphp"><a href="{{route('cms.seed-dealers.index')}}"> Seed Dealers</a></li>
        @endif

        @if(permission('*.seed-varieties.*'))
          <li class="@php activeLink(['seed-varieties']) @endphp"><a href="{{route('cms.seed-varieties.index')}}"> Seed Varieties</a></li>
        @endif --}}

        {{-- @if(permission('*.online_services.*'))
          <li class="@php activeLink(['online_services']) @endphp"><a href="{{ url('cms/online_services') }}">Online Services</a>  </li>
        @endif --}}

        {{-- @if(permission('*.howdois.*'))
          <li class="@php activeLink(['howdois']) @endphp"><a href="{{ url('cms/howdois') }}">How Do I?</a>  </li>
        @endif 
        --}}
     

        {{-- @if(permission('*.hospitals.*'))
        <li class="@php activeLink(['hospitals']) @endphp"><a href="{{url('/cms/hospitals')}}"> Hospitals</a></li>
      @endif --}}
        {{-- @if(permission('*.quickinfos.*'))
          <li class="@php activeLink(['quickinfos']) @endphp"><a href="{{route('cms.quickinfos.index')}}">Quick Info</a></li>
        @endif --}}

        
        {{-- @if(permission('*.more-infos.*'))
          <li class="@php activeLink(['more-infos']) @endphp"><a href="{{ url('cms/more-infos') }}"> Homepage Informations</a></li>
        @endif --}}
      </ul>
  </li>
  @endif 
  
  @if(permission(['*.home_links.*','*.ict_links.*','*.support_links.*','*.about_links.*','*.online_services.*','*.customer_centers.*','*.staffemail.*','*.important_links.*', '*.quick_links.*', '*.related_links.*','*.external_links.*','*.sponsors.*','*.social_links.*']))
  <li data-username="home online services customer centers important related links quick social sponsors staff email"
      class="nav-item site-hasmenu @php activeLink(['home_links','ict_links','support_links','about_links','online_services','customer_centers','sponsors','staffemail','external_links','social_links','quick_links','related_links','important_links']) @endphp">
      <a href="javascript:" class="nav-link">
        <span class="site-micon"><i class="feather icon-link"></i></span><span class="site-mtext">Links</span></a>
      <ul class="site-submenu">
        @if(permission('*.related_links.*'))
          <li class="@php activeLink(['related_links']) @endphp"><a href="{{ url('cms/related_links') }}">Related Links</a>  </li>
        @endif

        @if(permission('*.important_links.*'))
          <li class="@php activeLink(['important_links']) @endphp"><a href="{{ url('cms/important_links') }}">Important Links</a>  </li>
        @endif

        @if(permission('*.quick_links.*'))
          <li class="@php activeLink(['quick_links']) @endphp"><a href="{{ url('cms/quick_links') }}">Quick Links</a> </li>
        @endif 

        @if(permission('*.social_links.*'))
          <li class="@php activeLink(['social_links']) @endphp"><a href="{{ url('cms/social_links') }}">Social Links</a>  </li>
        @endif

        {{-- @if(permission('*.about_links.*'))
          <li class="@php activeLink(['about_links']) @endphp"><a href="{{ url('cms/about_links') }}">Laboratories Links</a>  </li>
        @endif --}}

        {{-- @if(permission('*.support_links.*'))
          <li class="@php activeLink(['support_links']) @endphp"><a href="{{ url('cms/support_links') }}">Help and Support Links</a>  </li>
        @endif --}}

        {{-- @if(permission('*.ict_links.*'))
          <li class="@php activeLink(['ict_links']) @endphp"><a href="{{ url('cms/ict_links') }}">ICT Services Links</a>  </li>
        @endif --}}

        {{-- @if(permission('*.home_links.*'))
          <li class="@php activeLink(['home_links']) @endphp"><a href="{{ url('cms/home_links') }}">Homepage Links</a>  </li>
        @endif --}}

      </ul>
  </li>
  @endif


  @if(permission(['*.organogram.*','*.administration.*','*.administration_categories.*','*.administration_categories_members.*']))
  <li data-username="organogram administration management members" class="nav-item site-hasmenu @php activeLink(['organogram','administration','administration_categories','administration_categories_members']) @endphp">
      <a href="javascript:" class="nav-link ">
        <span class="site-micon"><i class="feather icon-users"></i></span>
        <span class="site-mtext"> Administration</span>
      </a>
      <ul class="site-submenu">

        {{-- @if(permission('*.organogram.*'))
        <li class="@php activeLink(['organogram']) @endphp"><a href="{{ url('cms/organogram') }}"> Organogram</a></li>
        @endif --}}
        
        @if(permission('*.administration.*'))
        <li class="@php activeLink(['administration']) @endphp"><a href="{{ url('cms/administration') }}">Administration Members</a></li>
        @endif

        @if(permission('*.administration_categories.*'))
        <li class="@php activeLink(['administration_categories']) @endphp"><a href="{{ url('cms/administration_categories') }}"> Administration Categories</a></li>
        @endif

      </ul>
  </li>
  @endif    

  @if(permission('*.documents.*','*.document-categories.*'))
  <li data-username="documents" class="nav-item @php activeLink(['document-categories','documents']) @endphp">
      <a href="{{ url('/cms/document-categories') }}" class="nav-link">
        <span class="site-micon"><i class="feather icon-file"></i></span>
        <span class="site-mtext">Publications</span>
      </a>
  </li>
  @endif

  
  


  @if(permission(['*.pages.*']))
   <li data-username="pages" class="nav-item @php activeLink(['pages']) @endphp">
       <a href="{{ url('cms/pages') }}" class="nav-link">
         <span class="site-micon"><i class="feather icon-file-text"></i></span>
         <span class="site-mtext">Pages</span>
       </a>
   </li>
   @endif

   {{-- @if(permission('*. .*')) --}}


   <li data-username="chart uploads" class="nav-item @php activeLink(['chart-uploads']) @endphp">
    <a href="{{ route('chart_uploads.index') }}" class="nav-link">
        <span class="site-micon">
            <i class="feather icon-upload"></i>
        </span>
        <span class="site-mtext">Chart Uploads</span>
    </a>
</li>
  {{-- @endif --}}

  @if(permission('*.menu.*'))
    <li class="nav-item site-menu-caption">
        <label>Customization</label>
    </li>
  @endif

  @if(permission('*.menu.*'))
    <li data-username="menu" class="nav-item @php activeLink(['menu','menu-items']) @endphp">
        <a href="{{ url('cms/menu') }}" class="nav-link">
          <span class="site-micon"><i class="feather icon-menu"></i></span>
          <span class="site-mtext">Menu</span>
        </a>
    </li>
  @endif

  {{-- @if(permission('*.menu.*'))
    <li data-username="menu" class="nav-item @php activeLink(['menu-items-details']) @endphp">
        <a href="{{ url('cms/menu-items-details') }}" class="nav-link">
          <span class="site-micon"><i class="feather icon-menu"></i></span>
          <span class="site-mtext">Main Menu Details</span>
        </a>
    </li>
  @endif --}}


   @if(permission('*.menu.*'))
    <li class="nav-item site-menu-caption">
        <label>User Feedback</label>
    </li>
  @endif

  @if(permission('*.complaints.*'))
    <li data-username="feedback complaints" class="nav-item @php activeLink(['feedback','complaints']) @endphp">
        <a href="{{ url('cms/complaints') }}" class="nav-link">
          <span class="site-micon"><i class="feather icon-mail"></i></span>
          <span class="site-mtext">Feedback</span>
        </a>
    </li>
  @endif

  @if(permission(['*.googlemaps.*','*.seo.*','*.users.*','*.roles.*','*.translations.*']))
    <li class="nav-item site-menu-caption">
        <label>Settings</label>
    </li>
  @endif

  @if(permission('*.translations.*'))
    <li data-username="translation languages" class="nav-item @php activeLink(['translations']) @endphp">
        <a href="{{ url('cms/translations') }}" class="nav-link">
          <span class="site-micon"><i class="feather icon-file-text"></i></span>
          <span class="site-mtext">Translations</span>
        </a>
    </li>
  @endif

  @if(permission(['*.preferences.*','*.regional_office.*','*.googlemaps.*','*.seo.*']))
    <li data-username="preferences regional office google map seo contacts site settings" class="nav-item site-hasmenu @php activeLink(['preferences','regional_office','seo','googlemaps']) @endphp">
      <a href="javascript:" class="nav-link ">
        <span class="site-micon"><i class="feather icon-settings"></i></span><span class="site-mtext">Site Settings</span></a>
      <ul class="site-submenu">

        @if(permission('*.regional_office.*'))
          <li class="@php activeLink(['regional_office']) @endphp"><a href="{{ url('cms/regional_office')}}">Contacts Us Details</a></li>
        @endif

        @if(permission('*.googlemaps.*'))
          <li class="@php activeLink(['googlemaps']) @endphp"><a href="{{ url('cms/googlemaps')}}">Google Map</a> </li>
        @endif

        @if(permission('*.seo.*'))
          <li class="@php activeLink(['seo']) @endphp"><a href="{{ url('cms/seo')}}">SEO</a></li>
        @endif

        @if(permission('*.preferences.*'))
          <li class="@php activeLink(['preferences']) @endphp"><a href="{{ url('cms/preferences')}}">Preferences</a></li>
        @endif

      </ul>
  </li>
  @endif

  @if(permission(['*.users.*','*.roles.*']))
    <li data-username="role users administration" class="nav-item site-hasmenu @php activeLink(['user-registration-form','roles']) @endphp">
      <a href="javascript:" class="nav-link ">
        <span class="site-micon"><i class="feather icon-users"></i></span><span class="site-mtext">CMS Administrations</span></a>
      <ul class="site-submenu">
        @if(permission('*.users.*'))
          <li><a href="{{route('cms.users.create-user-form')}}">Users</a></li>
        @endif

        @if(permission('*.roles.*'))
          <li class="@php activeLink(['roles']) @endphp"><a href="{{url('cms/roles')}}">Roles</a></li>
        @endif

        @if(permission('*.logs.*'))
          <li><a href="{{url('cms/logs')}}">Logs</a></li>
        @endif

      </ul>
  </li>
  @endif

</ul>
