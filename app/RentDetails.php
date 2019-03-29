<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RentDetails extends Model
{
    protected $primaryKey = 'rent_details_id';

    protected $fillable = ['monthly_rent','service_charge','agreement',
        'agreement_file_url', 'initial_date','expire_date','advanced_amount',
        'months_toadjust_advamount','advanced_amount_permonth'];
}
