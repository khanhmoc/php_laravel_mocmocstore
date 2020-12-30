<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class order_status extends Model
{
    use HasFactory;

    // neu bảng tự đạt tên thi config lại tên bang cho model lam viec
    protected $table = 'order_status';
    //khao chinh neu khac
    protected $primaryKey = 'id';
    public function order()
    {
        // return $this->hasMany()
    }
    public $timestamps = false;
}
