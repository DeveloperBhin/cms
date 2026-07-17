<?php namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\SeedVariety;

class SeedVarietiesController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index() 
	{
		$seedVarieties = SeedVariety::orderBy('name', 'ASC')->where('active', 1)->paginate(20);
    	return view('site.seed-varieties.index', compact('seedVarieties'));
	}
	

	public function search(Request $request){
		$term = strip_tags($request->q);
		$seedVarieties = SeedVariety::where('active', 1)->where(function ($q)  use ($term){
			$q->where('name', 'like', '%' . $term . '%')
			->orWhere('species', 'like', '%' . $term . '%')
			->orWhere('owner_and_source', 'like', '%' . $term . '%')
			->orWhere('production_altitude_range', 'like', '%' . $term . '%')
			->orWhere('recommended_places', 'like', '%' . $term . '%')
			->orWhere('grain_yield', 'like', '%' . $term . '%')
			->orWhere('distinctive_characters', 'like', '%' . $term . '%')
			->orWhere('special_attributes', 'like', '%' . $term . '%');
		})->orderBy('id','DESC')->paginate(5000);
		
		return view('site.seed-varieties.index', compact('seedVarieties','term'));
	}



	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($entity_slug)
	{
		$seedVariety = SeedVariety::findBySlug($entity_slug);

		//if  content not found
		if(!$seedVariety) return view('site.default-not-found');

		return view('site.seed-varieties.show', compact('seedVariety'));
	}

	

}
