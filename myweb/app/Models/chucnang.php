<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class chucnang extends Model
{
    protected $table = 'chucnang';
    //khao chinh neu khac
    protected $primaryKey = 'id';
    public function roles()
    {
        // return $this->hasMany()
    }
    public $timestamps = false;
}
