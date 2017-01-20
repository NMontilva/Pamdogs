@extends('admin.template.main')

@section('title','Usuarios Registrados')


@section('content')

	<legend>Listado</legend>

	<a href="{{route('admin.users.create')}}" class="btn btn-default">Registrar nuevo usuario</a>
	<table class="table table-striped">
		<thead>
			<th>ID</th>
			<th>Nombre</th>
			<th>Correo Eletronico</th>
			<th>Tipo</th>
			<th>Accion</th>
		</thead>
		<tbody>
			@foreach($users as $user)
				<tr>
					<td>{{ $user->id}}</td>
					<td>{{ $user->name}}</td>
					<td>{{ $user->email}}</td>
					<td>
						@if($user->type == "admin")
							<span class="label label-danger">{{ $user->type}}</span> 
						@elseif($user->type == "empleado")
							<span class="label label-primary">{{ $user->type}}</span>
						@elseif($user->type == "cliente")
							<span class="label label-info">{{ $user->type}}</span>
						@endif
					</td>
					<td><a href="{{ route('admin.users.edit', $user->id) }}" class="btn btn-warning"><span class="glyphicon glyphicon-wrench"></span></a><a href="{{ route('admin.users.destroy', $user->id) }}" class="btn btn-danger" aria-hidden="true" onclick="return confirm('Seguro desea elimiar al usuario?')"><span class="glyphicon glyphicon-remove-circle" oncl aria-hidden="true"></span></a></td>
				</tr>
			@endforeach
		</tbody>
	</table>
	{!! $users->render() !!}
@endsection