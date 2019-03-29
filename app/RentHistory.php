<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RentHistory extends Model
{
    protected $primaryKey = 'rent_history_id';

    protected $fillable = ['rent_details_id', 'manager_id', 'tenant_id'];
}
