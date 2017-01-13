<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
    protected $table = "mas_empleados";

    protected $fillable = ['nombres_empleado','apellido_empleado','cedula_empleado','correo_empleado','edad_empleado','telefono_habitacion_empleado','telefono_movil_empleado','sexo_empleado','direccion_empleado','descripcion_empleado','id_departamento','id_municipio','estatus_empleado','id_user'];

    public function serviciosempleados()
    {
    	return $this->hasMany('App\ServicioEmpleado', 'id_empleados', 'id_empleados');
    }
}
