<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PropertyType extends Model
{
    protected $primaryKey = 'ptype_id';

    protected $fillable = [ 'name', 'description'];
}
