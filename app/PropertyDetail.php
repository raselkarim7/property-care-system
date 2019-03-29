<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PropertyDetail extends Model
{
    protected $fillable = ['p_id', 'name', 'size', 'decoration', 'facing', 'noof_room',
        'noof_wash_room', 'description', 'address_id', 'image_url', 'noof_car_parking' ];
}
