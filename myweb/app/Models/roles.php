<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class roles extends Model
{
    use HasFactory;

    // neu bảng tự đạt tên thi config lại tên bang cho model lam viec
    protected $table = 'roles';
    //khao chinh neu khac
    protected $primaryKey = 'id';
    public function user()
    {
        // return $this->hasMany()
    }
    public $timestamps = false;
}
