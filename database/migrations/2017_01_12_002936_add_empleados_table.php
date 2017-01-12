<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddEmpleadosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('empleados_mas', function (Blueprint $table) {
            $table->increments('id_empleado');
            $table->string('nombres_empleado');
            $table->string('apellido_empleado');
            $table->string('cedula_empleado');
            $table->string('correo_empleado');
            $table->integer('edad_empleado');
            $table->string('telefono_habitacion_empleado');
            $table->string('telefono_movil_empleado');
            $table->string('sexo_empleado');
            $table->string('direccion_empleado');
            $table->string('descripcion_empleado');
            $table->integer('id_departamento');
            $table->integer('id_municipio');
            $table->integer('estatus_empleado');
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
        Schema::drop('empleados_mas');
    }
}
