@extends('admin.template.main')

@section('title','Editar Usuario '. $user->name)

@section('content')

	<legend>Edicion de Usuarios</legend>

	{!! Form::open(['route'=> ['admin.users.update', $user], 'method' => 'PUT']) !!}

		<div class="form-group">
			{!! Form::label('name', 'Nombre') !!}
			{!! Form::text('name', $user->name, ['class' => 'form-control', 'placeholder' => 'Nombre de Usuario', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('email', 'Correo Electronico') !!}
			{!! Form::email('email', $user->email, ['class' => 'form-control', 'placeholder' => 'ejemplo@correo.com', 'required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('type','Tipo') !!}
			{!! Form::select('type', ['' => 'Seleccione el tipo de Usuario','cliente' => 'Cliente', 'empleado' => 'Empleado', 'admin' => 'Administrador'], $user->type, ['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
			{!! Form::submit('Editar', ['class' => 'btn btn-primary']) !!}
		</div>

	{!! Form::close() !!}
 
@endsection