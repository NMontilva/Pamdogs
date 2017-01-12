<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servicio_Empleado extends Model
{
    protected $table = "mas_servicios_empleados";

    protected $fillable = ['id_servicios','id_empleados'];

    public function empleado()
    {
    	return $this->belongsToMany('App\Empleado');
    }

    public function servicio()
    {
    	return $this->belongsToMany('App\Servicio');
    }
}
