<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Product;

class CustomerMail extends Model
{
    use HasFactory;
    
    protected $guarded = [];

    public function product()
    {
        return $this->hasone(Product::class,'id', 'product_id');
    }
}
