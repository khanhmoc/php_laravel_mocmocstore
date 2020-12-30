<?php

namespace App\Models;

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;


class users extends Authenticatable
{
    use HasFactory;
    protected $table = 'users';
    public $timestamps = false;
    protected $primaryKey = 'id';

    public function username()
    {
        return 'username';
    }
}
