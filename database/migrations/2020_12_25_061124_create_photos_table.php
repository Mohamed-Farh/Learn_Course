<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePhotosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::create('photoable', function (Blueprint $table) 
        {
            $table->id();
            $table->string('filename');
            $table->integer('photoable_id'); //Related To Model 
            $table->string('photoable_type'); //Related To Model
            $table->string('relation',400);
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
        Schema::dropIfExists('photos');
    }
}
