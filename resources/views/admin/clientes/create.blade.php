@extends('admin.template.main')

@section('title','Registrar Cliente')

@section('content')

	<legend>Registro de Clientes</legend>

	{!! Form::open(['route'=>'admin.clientes.store', 'method' => 'POST']) !!}

		<div class="form-group">
			{!! Form::label('nombres', 'Nombres') !!}
			{!! Form::text('nombres', null, ['class' => 'form-control', 'placeholder' => 'Nombres', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('apellido', 'Apellidos') !!}
			{!! Form::text('apellido', null, ['class' => 'form-control', 'placeholder' => 'Apellidos', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('cedula', 'Cedula') !!}
			{!! Form::text('cedula', null, ['class' => 'form-control', 'placeholder' => 'Cedula de Identidad', 'required']) !!}
		</div>
				<div class="form-group">
			{!! Form::label('edad', 'Edad') !!}
			{!! Form::text('edad', null, ['class' => 'form-control', 'placeholder' => 'Edad', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('telefono_habitacion', 'Telefono de Habitacion') !!}
			{!! Form::text('telefono_habitacion', null, ['class' => 'form-control', 'placeholder' => 'Telefono de Habitacion', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('telefono_movil', 'Telefono Movil') !!}
			{!! Form::text('telefono_movil', null, ['class' => 'form-control', 'placeholder' => 'Telefono Movil', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('sexo','Sexo') !!}
			{!! Form::select('sexo', ['' => 'Seleccione su sexo','masculino' => 'Masculino', 'femenino' => 'Femenino'], null, ['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('direccion', 'Direccion') !!}
			{!! Form::text('direccion', null, ['class' => 'form-control', 'placeholder' => 'Direccion', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('descripcion', 'Descripcion') !!}
			{!! Form::textarea('descripcion', null, ['class' => 'form-control', 'placeholder' => 'Descripcion', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('estatus','Estatus') !!}
			{!! Form::select('estatus', ['' => 'Seleccione su sexo','activo' => 'Activo', 'inactivo' => 'Inactivo'], null, ['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
			{!! Form::submit('Registrar', ['class' => 'btn btn-primary']) !!}
		</div>

	{!! Form::close() !!}
 
@endsection