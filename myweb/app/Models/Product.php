<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class product extends Model implements TranslatableContract
{
    use HasFactory;
    use Translatable;
    // protected $table = 'products';
    // protected $primaryKey = 'id';
    public $translatedAttributes = ['product_name', 'description', 'detail', 'title'];
    // protected $fillable = ['author'];





    public function product_name()
    {
        return 'product_name';
    }
    public function category()
    {
        return $this->hasOne('\App\Models\catgory', 'id', 'id_category');
    }
    public function brand()
    {
        # code...
        return $this->hasOne('\App\Model\brand', 'id', 'id_brand');
    }
    public function provider()
    {
        # code...
        return $this->hasOne('\App\Model\provider', 'id', 'id_provider');
    }
    public $timestamps = false;
}
