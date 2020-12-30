<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class translate_product extends Model
{
    use HasFactory;
    // neu bảng tự đạt tên thi config lại tên bang cho model lam viec
    protected $table = 'translate_product';
    public $timestamps = false;
    //khao chinh neu khac
    //protected $primaryKey = 'id';
    public function tin()
    {
        return $this->hasOne('\App\Models\tin', 'id', 'id_translate');
    }
}
