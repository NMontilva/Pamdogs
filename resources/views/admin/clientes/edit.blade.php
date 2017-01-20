@extends('admin.template.main')

@section('title','Editar Cliente '. $cliente->nombres)

@section('content')

	<legend>Edicion de Clientes</legend>

	{!! Form::open(['route'=> ['admin.clientes.update', $cliente], 'method' => 'PUT']) !!}

		<div class="form-group">
			{!! Form::label('nombres', 'Nombres') !!}
			{!! Form::text('nombres', $cliente->nombres, ['class' => 'form-control', 'placeholder' => 'Nombres', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('apellido', 'Apellidos') !!}
			{!! Form::text('apellido', $cliente->apellido, ['class' => 'form-control', 'placeholder' => 'Apellidos', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('cedula', 'Cedula') !!}
			{!! Form::text('cedula', $cliente->cedula, ['class' => 'form-control', 'placeholder' => 'Cedula de Identidad', 'required']) !!}
		</div>
				<div class="form-group">
			{!! Form::label('edad', 'Edad') !!}
			{!! Form::text('edad', $cliente->edad, ['class' => 'form-control', 'placeholder' => 'Edad', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('telefono_habitacion', 'Telefono de Habitacion') !!}
			{!! Form::text('telefono_habitacion', $cliente->telefono_habitacion, ['class' => 'form-control', 'placeholder' => 'Telefono de Habitacion', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('telefono_movil', 'Telefono Movil') !!}
			{!! Form::text('telefono_movil', $cliente->telefono_movil, ['class' => 'form-control', 'placeholder' => 'Telefono Movil', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('sexo','Sexo') !!}
			{!! Form::select('sexo', ['' => 'Seleccione su sexo','masculino' => 'Masculino', 'femenino' => 'Femenino'], $cliente->sexo, ['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('direccion', 'Direccion') !!}
			{!! Form::text('direccion', $cliente->direccion, ['class' => 'form-control', 'placeholder' => 'Direccion', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('descripcion', 'Descripcion') !!}
			{!! Form::textarea('descripcion', $cliente->descripcion, ['class' => 'form-control', 'placeholder' => 'Descripcion', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('estatus','Estatus') !!}
			{!! Form::select('estatus', ['' => 'Seleccione su sexo','activo' => 'Activo', 'inactivo' => 'Inactivo'], $cliente->estatus, ['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
			{!! Form::submit('Editar', ['class' => 'btn btn-primary']) !!}
		</div>

	{!! Form::close() !!}
 
@endsection