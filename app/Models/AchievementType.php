<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use App\Traits\TrackableTrait;
use App\Traits\TrackableInterface;
use App\Traits\Multilingual;

class AchievementType extends Model implements TrackableInterface{

	use Sluggable,TrackableTrait,Multilingual;
	use SluggableScopeHelpers;

	protected $guarded=[];

  protected $translatableAttributes = ['name'];

	public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_en'
            ]
        ];
    }

	public static $rules = [
    	'name_en' => 'required',
		'name_sw' => 'required',
	];

	public static $rules_update = [
    	'name_en' => 'required',
		'name_sw' => 'required',
	];

	

	public function npsAchievement()
	{
		return $this->hasOne('App\Models\NpsAchievement');
	}
}
