<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    protected $primaryKey = 'district_id';

    protected $fillable = ['name'];
}
