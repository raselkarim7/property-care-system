<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePropertiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('property', function (Blueprint $table) {
            $table->bigIncrements('p_id');
            $table->integer('ptype_id');
            $table->integer('psub_type_id');
            $table->integer('floor_no')->nullable();
            $table->integer('unit_id')->nullable();

            $table->string('p_status', 50)->nullable();
            $table->boolean('is_available')->default(1);
            $table->date('available_from')->nullable();

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


        Schema::dropIfExists('property');
    }
}
