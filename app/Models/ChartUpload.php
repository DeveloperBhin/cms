<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


    class ChartUpload extends Model
{
    protected $fillable = [
        'title',
        'file',
        'file_type',
        'description',
        'status'
    ];

}
