<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Thana extends Model
{
    protected $primaryKey = 'thana_id';

    protected $fillable = [ 'name', 'district_id'];
}
