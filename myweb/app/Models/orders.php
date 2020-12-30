<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class orders extends Model
{
    use HasFactory;
    // neu bảng tự đạt tên thi config lại tên bang cho model lam viec
    protected $table = 'orders';
    //khao chinh neu khac
    // protected $primaryKey = 'id';
    public $timestamps = false;
    public function ordersdetail()
    {
        return $this->hasMany('\App\Models\ordersdetail', 'id_order', 'id');
    }
}
