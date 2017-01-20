<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{

    protected $table = "clientes";

    protected $fillable = ['nombres','apellido','cedula','correo','edad','telefono_habitacion','telefono_movil','sexo','direccion','descripcion','estatus','id_user'];
}
