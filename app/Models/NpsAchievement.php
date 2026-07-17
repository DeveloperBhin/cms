<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use App\Traits\TrackableTrait;
use App\Traits\TrackableInterface;
use App\Traits\Multilingual;

class NpsAchievement extends Model implements TrackableInterface{

	use Sluggable,TrackableTrait,Multilingual;
	use SluggableScopeHelpers;

	protected $guarded=[];

  protected $translatableAttributes = ['count'];

	public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_en'
            ]
        ];
    }

	public static $rules = [
		'fin_year_id' => 'required',
    	'achievement_type_id' => 'required',
    	'count' => 'required',
	];

	public static $rules_update = [
		'fin_year_id' => 'required',
    	'achievement_type_id' => 'required',
    	'count' => 'required',
	];

	

	public function achievementType()
	{
		return $this->belongsTo('App\Models\AchievementType');
	}

	public function finYear()
	{
		return $this->belongsTo('App\Models\FinYear');
	}
}
