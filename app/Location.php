<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    protected $primaryKey = 'location_id';

    protected $fillable = ['location_id', 'name', 'district_id', 'thana_id', ];
}
