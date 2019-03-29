<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rent extends Model
{
    protected $fillable = ['p_id', 'rent_details_id', 'status', 'manager_id', 'tenant_id'];
}
