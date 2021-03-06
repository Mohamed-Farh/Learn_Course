<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->string('title', 500);
            $table->string('description', 500);
            $table->string('slug', 500);
            $table->decimal('price', 10, 2);
            $table->string('level');
            $table->integer('status')->default(0);
            $table->integer('lang')->default(0);
            $table->string('link');
            

            //Every Track Has Many Courses
            $table->bigInteger('track_id')->unsigned();

            $table->foreign('track_id')
                  ->references('id')->on('tracks')
                  ->onDelete('cascade');

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
        Schema::dropIfExists('courses');
    }
}
