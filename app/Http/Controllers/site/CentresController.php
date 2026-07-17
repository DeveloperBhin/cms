<?php

namespace App\Http\Controllers\Site;

use Illuminate\Http\Request;
use App\Models\Centre;
use App\Models\Slide;
use App\Models\Post;
use App\Models\Partner;
use App\Models\News;
use App\Models\User;
use App\Models\Gallery;

class CentresController extends BaseSiteController
{
    /**
     * Display the centre page by alias.
     *
     * @param string $alias
     * @return \Illuminate\View\View|\Illuminate\Http\Response
     */
    public function index($alias)
    {
        // Find centre by alias and publish status
        $centre = Centre::where('alias', $alias)->where('status', 'publish')->first();

        if (!$centre) {
            abort(404, 'Centre not found');
        }

        // Title
        $title = $centre->title;

        // Slides
        $slides = Gallery::where('featured', 1)->where('type', '=', 'photos')->where('centre_id', $centre->id)->first();
        // $slides = Slide::where('status', 'publish')
        //     ->where('centre_id', $centre->id)
        //     ->get();

        // News (Posts flagged as 'posts')
        $news = News::where('centre_id', $centre->id)
            ->where('flag', 'posts')
            ->orderBy('created_at', 'DESC')
            ->limit(4)
            ->get();

        // Load authors for news posts
        foreach ($news as $post) {
            $post->author = User::find($post->created_by);
        }

        // Partners
        $partners = Partner::where('centre_id', $centre->id)->get();

        // Return view
        return view('site.centres.index', compact('centre', 'title', 'slides', 'news', 'partners'));
    }
}
