<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePropertySubTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('property_sub_types', function (Blueprint $table) {
            $table->bigIncrements('psub_type_id');
            $table->string('name',100);
            $table->integer('ptype_id');
            $table->timestamps();

            // $table->foreign('ptype_id')->references('ptype_id')->on('property_types');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('property_sub_types');
    }
}
