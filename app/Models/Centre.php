<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use App\Traits\TrackableTrait;
use App\Traits\TrackableInterface;
use App\Traits\Multilingual;
use Illuminate\Support\Facades\Auth;

class Centre extends Model implements TrackableInterface
{
    use Sluggable, TrackableTrait, Multilingual, SluggableScopeHelpers;

    protected $table = "centres";

    protected $primaryKey = 'id'; // Laravel uses 'id' by default, but good to be explicit

    protected $guarded = []; // allow mass assignment on all fields

    /**
     * Sluggable config
     */
    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_en' // assuming you have this column
            ]
        ];
    }

    public function getIsAdminAttribute()
{
    return $this->role == 'admin';
}

    /**
     * Scope to filter by user permission
     */
    public function scopeUserAllowed($query)
    {
        $user = Auth::user();

        if (!$user) {
            return $query; // no filtering if not logged in
        }

        if (!$user->is_admin && $user->centre_id != 0) {
            return $query->where('id', $user->centre_id);
        }

        return $query;
    }
}
