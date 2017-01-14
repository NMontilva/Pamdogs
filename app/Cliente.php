<?php

namespace App;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{

	Use Sluggable;

    protected $table = "mas_clientes";

    protected $fillable = ['nombres_clientes','apellido_clientes','cedula_clientes','correo_clientes','edad_clientes','telefono_habitacion_clientes','telefono_movil_clientes','sexo_clientes','direccion_clientes','descripcion_clientes','id_departamento','id_municipio','estatus_clientes','id_user'];

    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'nombres_clientes'
            ]
        ];
    }
}
