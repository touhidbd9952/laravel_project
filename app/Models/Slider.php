<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;

    //fillable
    protected $guarded = [];

    //relation with user table
    public function user()
    {
        return $this->hasone(User::class,'id', 'user_id');
    }
}
