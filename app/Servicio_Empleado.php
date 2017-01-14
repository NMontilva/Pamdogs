<?php

namespace App;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Servicio_Empleado extends Model
{
    protected $table = "mas_servicios_empleados";

    protected $fillable = ['id_servicios','id_empleados'];

    public function empleado()
    {
    	return $this->belongsToMany('App\Empleado', 'mas_servicios_empleados', 'id_empleados', 'id_empleados');
    }

    public function servicio()
    {
    	return $this->belongsToMany('App\Servicio', 'mas_servicios_empleados', 'id_servicios', 'id_servicios');
    }
}
