<?php
namespace App\Http\Controllers\cms;

use App\Http\Controllers\Controller;

use App\Models\AchievementType;
use App\Models\FinYear;
use App\Models\NpsAchievement;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\DgMessage;
use \Cviebrock\EloquentSluggable\Services\SlugService;

use Illuminate\Support\Facades\DB;
use Image;


class NpsAchievementController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $this->updateFinancialYear();
        $nps_achievements = NpsAchievement::orderBy('id', 'DESC')->get();
        $fin_years = FinYear::orderBy('id', 'ASC')->pluck('name','id');
        $achievement_types = AchievementType::orderBy('id', 'ASC')->pluck('name','id');
        return view('cms.nps_achievements.index', compact('nps_achievements', 'fin_years', 'achievement_types'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   
        $this->updateFinancialYear();
        return view('cms.nps_achievements.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(NpsAchievement::$rules);

        $data = $request->all();
        $exists = $this->achievementUnderFinancial($data);
        if(empty($exists)){
            $nps_achievement = NpsAchievement::create($data);

            if($nps_achievement){
                return redirect('cms/nps_achievements')->with('status','success');
            }
        }else{
            return redirect('cms/nps_achievements')->withErrors(['errors' =>'Achievement of this financial year has already exists, please update or create with new financial year']);
        }

        
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->updateFinancialYear();
        $nps_achievement = NpsAchievement::find($id);
        return view("cms.nps_achievements.edit", compact('nps_achievement'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $nps_achievement = NpsAchievement::find($id);

        $request->validate(NpsAchievement::$rules);

        $data = $request->all();
        if($nps_achievement->fin_year_id != $data['fin_year_id']){
            $exists = $this->achievementUnderFinancial($data);
            if (empty($exists)) {
                $nps_achievement->update($data);
                return redirect('cms/nps_achievements')->with('status', 'success');
            } else {
                return redirect('cms/nps_achievements')->withErrors(['errors' => 'Achievement of this financial year has already exists, please update or create with new financial year']);
            }
        }else{
            $nps_achievement->update($data);
            return redirect('cms/nps_achievements')->with('status', 'success');
        }

        

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroy($id)
    {
        NpsAchievement::destroy($id);
        return redirect('cms/nps_achievements')->with('status','success');
    }

    function achievementUnderFinancial($data){
        return NpsAchievement::where("achievement_type_id", $data["achievement_type_id"])
            ->where("fin_year_id", $data["fin_year_id"])
            ->first();
    }

    public function updateFinancialYear(){
        // dd(currentFinancialYear());
        DB::table('fin_years')->updateOrInsert(['name' => currentFinancialYear()], ['created_at' => Carbon::now(), 'updated_at' => Carbon::now()]);
    }

}
