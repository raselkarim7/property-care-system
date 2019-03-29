<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rent_details', function (Blueprint $table) {
            $table->bigIncrements('rent_details_id');
            $table->float('monthly_rent',20,5);
            $table->float('service_charge', 15,5);
            $table->text('agreement');
            $table->string('agreement_file_url', 100);
            $table->date('initial_date');
            $table->date('expire_date');

            $table->float('advanced_amount',20, 5);
            $table->integer('months_toadjust_advamount');
            $table->float('advanced_amount_permonth',20,5);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rent_details');
    }
}
