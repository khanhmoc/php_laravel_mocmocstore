<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class brand extends Model
{
    use HasFactory;

    // neu bảng tự đạt tên thi config lại tên bang cho model lam viec
    protected $table = 'brand';
    //khao chinh neu khac
    protected $primaryKey = 'id';
    public function product()
    {
        // return $this->hasMany()
    }
    public $timestamps = false;
}
