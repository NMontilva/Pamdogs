<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class ClientesRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'nombres' => 'min:4|max:120|required',
            'apellido' => 'min:4|max:120|required',
            'cedula' => 'required|numeric|unique:clientes',
            'edad' => 'min:4|max:120|required|numeric',
            'telefono_habitacion' => 'numeric',
            'telefono_movil' => 'numeric',
            'direccion' => 'min:4|max:120|required',
            'descripcion' => 'min:4|max:255|required',
        ];
    }
}
