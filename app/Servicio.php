<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    protected $table = "mas_servicios";

    protected $fillable = ['nombre_servicios','costo_servicios','descripcion_servicios','estatus_servicios'];

    public function serviciosempleados()
    {
    	return $this->hasMany('App\ServicioEmpleado');
    }
}
}
