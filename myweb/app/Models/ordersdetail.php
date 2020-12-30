<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ordersdetail extends Model
{
    use HasFactory;
    // neu bảng tự đạt tên thi config lại tên bang cho model lam viec
    protected $table = 'orderdetail';
    //khao chinh neu khac
    //protected $primaryKey = 'id';
    public function orders()
    {
        return $this->hasOne('\App\Models\orders', 'id', 'id_order');
    }
    public function product()
    {
        return $this->hasOne('\App\Models\product', 'id', 'id_product');
    }
}
