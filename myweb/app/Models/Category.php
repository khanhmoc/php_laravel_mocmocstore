<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Category extends Model implements TranslatableContract
{
    // use HasFactory;

    // neu bảng tự đạt tên thi config lại tên bang cho model lam viec
    protected $table = 'categorys';
    // //khao chinh neu khac
    // protected $primaryKey = 'id';
    // public function product()
    // {
    //     // return $this->hasMany()
    // }

    use HasFactory;
    use Translatable;

    public $translatedAttributes = ['category_name', 'description'];
    // protected $fillable = ['author'];
    // public $timestamps = false;
}
