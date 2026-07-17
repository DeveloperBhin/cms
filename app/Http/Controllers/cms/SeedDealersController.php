<?php namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\SeedDealer;

class SeedDealersController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$seedDealers = SeedDealer::orderBy('id', 'DESC')->where('active',1)->paginate(10);
        return view('site.seed-dealers.index', compact('seedDealers'));
	}

	public function search(Request $request){
		$term = strip_tags($request->q);
		$seedDealers = SeedDealer::where('name', 'like', '%' . $term . '%')
		->orWhere('phone', 'like', '%' . $term . '%')
		->orWhere('address', 'like', '%' . $term . '%')
		->orWhere('email', 'like', '%' . $term . '%')
		->orWhere('registration_date', 'like', '%' . $term . '%')
		->orWhere('expire_date', 'like', '%' . $term . '%')
		->orderBy('id','DESC')->paginate(50);
		return view('site.seed-dealers.index', compact('seedDealers','term'));
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($slug)
	{
		$seedDealer = SeedDealer::findBySlug($slug);

		//if  content not found
		if(!$seedDealer) return view('site.default-not-found');

		return view('site.seed-dealers.show', compact('seedDealer'));
	}

	

}
