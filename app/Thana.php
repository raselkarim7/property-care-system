<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Thana extends Model
{
    protected $primaryKey = 'thana_id';

    protected $fillable = ['thana_id', 'name', 'district_id'];
}
