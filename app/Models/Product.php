<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Category;
use App\Models\User;

class Product extends Model
{
    use HasFactory;
    //fillable
    protected $guarded = [];

    //relation with category table
    public function category()
    {
        return $this->hasone(Category::class,'id', 'cat_id');
    }

    //relation with user table
    public function user()
    {
        return $this->hasone(User::class,'id', 'user_id');
    }

}
