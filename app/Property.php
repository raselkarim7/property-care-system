<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    protected $table = 'property';

    protected $primaryKey = 'p_id';

    protected $fillable = ['psub_type_id', 'name', 'ptype_id', 'floor_no', 'unit_id',
        'p_status', 'is_available', 'available_from'];

}
