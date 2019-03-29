<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PropertyOwnerMap extends Model
{
    protected $fillable = [ 'p_id', 'owner_id'];

}
