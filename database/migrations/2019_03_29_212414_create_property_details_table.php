<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePropertyDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('property_details', function (Blueprint $table) {
            $table->integer('p_id');
            $table->string('name', 150);
            $table->string('size', 100);
            $table->string('decoration', 100)->nullable();
            $table->string('facing', 100)->nullable();
            $table->string('noof_room', 50)->nullable();
            $table->string('noof_wash_room', 50)->nullable();
            $table->string('description', 150)->nullable();
            $table->integer('address_id');

            $table->string('image_url', 100)->nullable();
            $table->string('noof_car_parking', 100)->nullable();
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
        Schema::dropIfExists('property_details');
    }
}
