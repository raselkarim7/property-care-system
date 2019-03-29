<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentHistoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rent_histories', function (Blueprint $table) {
            $table->bigIncrements('rent_history_id');
            $table->integer('p_id');
            $table->integer('rent_details_id');
            $table->integer('manager_id');
            $table->integer('tenant_id');
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
        Schema::dropIfExists('rent_histories');
    }
}
