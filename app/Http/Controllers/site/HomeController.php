<?php namespace App\Http\Controllers\site;

use App\Models\Announcement;
use App\Models\Administration;
use App\Models\FinYear;
use App\Models\Gallery;
use App\Models\HowDoI;
use App\Models\Events;
use App\Models\Documents;
use App\Models\DocumentCategory;
use App\Models\Service;
use App\Models\Quote;
use App\Models\PressRelease;
use App\Models\OnlineService;
use App\Models\Notice;
use App\Models\News;
use App\Models\Campaign;
use App\Models\Video;
use App\Models\Photo;
use App\Models\Product;
use App\Models\WelcomeNote;
use App\Models\Slider;
use App\Models\Project;
use App\Models\Faq;
use App\Models\QuickInfo;
use App\Models\MoreInfo;
use App\Models\Partner;
use App\Models\QuickLink;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cookie;

class HomeController extends BaseSiteController
{

    public function index()
    {

        $dg = Administration::where('position', '=', 1)->with('member_categories')->first();


        $secretary = Administration::where('position', '=', 2)->first();
        // $chairman = Administration::where('position', '=', 1)->first();

        // $top_leaders = Administration::whereIn('position',[1,2])->orderBy('position','ASC')->get();
        $top_leaders = Administration::whereIn('position',[1,2])->orderBy('position','ASC')->latest()->get()->unique('position');

        //distinct()->whereNotNull('meta_value')->get(['meta_value'])

        $welcome_note = WelcomeNote::where('status',1)->first();

        $announcements = Announcement::where('active',1)->orderBy('id', 'DESC')->take(4)->get();

        $events = Events::where('active',1)->orderBy('event_date', 'DESC')->take(3)->get();

        $news_list = News::where('active',1)->orderBy('id', 'DESC')->take(3)->get();

        $quickinfos = QuickInfo::where('active',1)->orderBy('id', 'DESC')->get();

        // $product_categories = ProductCategory::where('active',1)->orderBy('id', 'DESC')->take(6)->get();

        // $faqs = Faq::where('active',1)->orderBy('id', 'DESC')->take(5)->get();

        // $publications = Documents::where('active',1)->orderBy('id', 'DESC')->take(5)->get();

         // $sponsors = Sponsor::orderBy('id', 'DESC')->limit(4)->get();

        $services = Service::where('active',1)->orderBy('id', 'DESC')->limit(3)->get();

        $campaign =Campaign::where('active',1)->orderBy('id', 'DESC')->first();

        $quotes = Quote::where('active',1)->orderBy('id', 'DESC')->get();

        $online_services = OnlineService::where('active',1)->orderBy('id', 'DESC')->limit(4)->get();

        $howdois = HowDoI::where('active',1)->orderBy('id','DESC')->limit(4)->get();

        $registration_section = MoreInfo::where('item_name','registration-section')->first();

        $partners = Partner::where('active',1)->orderBy('id','DESC')->get();

        // $press_releases = PressRelease::where('active',1)->orderBy('id', 'DESC')->limit(4)->get();

        // $notices = Notice::where('active',1)->orderBy('id', 'DESC')->limit(6)->get();
        $quicklinks = QuickLink::orderBy('id', 'DESC')->limit(4)->get();

        $slideshow = Gallery::where('featured', 1)->where('type', '=', 'photos')->first();

        $latest_photo = Photo::orderBy('created_at','DESC')->where('status',1)->whereHas('gallery',function($q){
            $q->where('status', 1);
        })->first();

        $latest_videos = Video::orderBy('created_at','DESC')->where('status',1)->whereHas('gallery',function($q){
            $q->where('status', 1)->where('type','videos');
        })->limit(10)->get();

        // $videoshow = Gallery::where('featured', 1)->where('type', '=', 'videos')->first();

        if ($slideshow == null) {
            $slideshow = [];
        } else {
            $slideshow = $slideshow->photos()->orderBy('id', 'DESC')->limit(10)->get();
        }

          $smallGalary = Photo::orderBy('created_at','DESC')->where('status',1)->whereHas('gallery',function($q){
            $q->where('status', 1);
        })->get();

        // if ($videoshow == null) {
        //     $videoshow = [];
        // } else {
        //     $videoshow = $videoshow->videos()->orderBy('id', 'DESC')->limit(1)->get();
        // }

        $announcements = Announcement::orderBy('id', 'DESC')->where('active', 1)->limit(8)->get();

        // $services = Service::where('active', true)->with('documentCategories')
        // ->whereHas('documentCategories',function($q){
        //   $q->where('featured', true);
        // })->take(4)->get();
        $quotes = Quote::where('active',1)->orderBy('id', 'DESC')->first();

        $achievements = [[ "title" => 'Matter Handled', "icon" => "fa-gas-pump", "image" => "site/images/icons/procecussion.jfif", "count" =>  "2929"],
        [ "title" =>  'Conviction Rate', "icon" => "fa-chess-queen", "image" => "site/images/icons/handcuffs.jpg", "count" =>  "80%"],
        [ "title" =>  'Conclusion Rate', "icon" => "fa-gas-pump", "image" => "site/images/icons/conclusion.png", "count" =>  "40%"],
        [ "title" =>  'Success Rate of abc', "icon" => "fa-gas-pump", "image" => "site/images/icons/success.png", "count" =>  "40%"]];

        $fin_years = FinYear::all();

        // echo $publicationCategory;exit;

        return view('site.home', compact(
            'news_list',
            'dg',
            'quotes',
            'slideshow',
            'quotes',
            'howdois',
            'campaign',
            'services',
            'events',
            'announcements',
            'quickinfos',
            'latest_videos',
            'latest_photo',
            'top_leaders',
            'smallGalary',
            'partners',
            'secretary',
            'registration_section',
            'welcome_note',
            'online_services',
            'achievements',
            'fin_years',
            'quicklinks'
        ));
    }
}
