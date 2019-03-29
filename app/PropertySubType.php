<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PropertySubType extends Model
{

    protected $primaryKey = 'psub_type_id';

    protected $fillable = [ 'name', 'ptype_id'];
}
