<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class original_product extends Model
{
    use HasFactory;
    // neu bảng tự đạt tên thi config lại tên bang cho model lam viec
    protected $table = '';
    //khao chinh neu khac
    //protected $primaryKey = 'id';
    public function dich()
    {
        return $this->hasMany('\App\Models\translate_product', 'id_pro', 'id');
    }
    //tao ra them 1 thong tin chua gia ban gia-giam-gia
    public static function one($id)
    {
        return self::where('id', $id)->first()->dich->where('lang', \App::getLocale())->first();
    }
}
