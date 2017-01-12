<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddServiciosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mas_servicios', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre_servicios');
            $table->string('costo_servicios');
            $table->string('descripcion_servicios');
            $table->string('estatus_servicios');
            $table->timestamps();
        });

        Schema::create('mas_servicios_empleados', function (Blueprint $table){
            $table->increments('id');
            $table->integer('id_servicios')->unsigned();
            $table->integer('id_empleados')->unsigned();
            $table->foreign('id_servicios')->references('id')->on('mas_servicios')->onDelete('cascade');
            $table->foreign('id_empleados')->references('id')->on('mas_empleados')->onDelete('cascade');
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
        Schema::drop('mas_servicios');

        Schema::drop('mas_servicios_empleados');
    }
}
