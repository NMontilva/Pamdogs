<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddClientesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clientes_mas', function (Blueprint $table) {
            $table->increments('id_clientes');
            $table->string('nombres_clientes');
            $table->string('apellido_clientes');
            $table->string('cedula_clientes');
            $table->string('correo_clientes');
            $table->integer('edad_clientes');
            $table->string('telefono_habitacion_clientes');
            $table->string('telefono_movil_clientes');
            $table->string('sexo_clientes');
            $table->string('direccion_clientes');
            $table->string('descripcion_clientes');
            $table->integer('id_departamento');
            $table->integer('id_municipio');
            $table->integer('estatus_clientes');
            $table->integer('id_user')->unsigned();
            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade');
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
        Schema::drop('clientes_mas');
    }
}
