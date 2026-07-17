<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nps_achievements', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('fin_year_id')->unsigned();
            $table->integer('achievement_type_id')->unsigned();
            $table->bigInteger('count');

            $table->foreign('fin_year_id')->references('id')->on('fin_years')->onDelete('cascade');
            $table->foreign('achievement_type_id')->references('id')->on('achievement_types')->onDelete('cascade');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('nps_achievements', function (Blueprint $table) {
            //
        });
    }
};
