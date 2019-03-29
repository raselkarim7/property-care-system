<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $primaryKey = 'address_id';

    protected $fillable = [ 'address_id', 'district_id', 'thana_id', 'location_id',
        'post_code',   'latlong' ];
}
