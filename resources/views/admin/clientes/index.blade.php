@extends('admin.template.main')

@section('title','Usuarios Registrados')


@section('content')

	<legend>Listado</legend>

	<a href="{{route('admin.users.create')}}" class="btn btn-default">Registrar nuevo cliente</a>
	<table class="table table-striped">
		<thead>
			<th>ID</th>
			<th>Nombre</th>
			<th>Cedula</th>
			<th>Edad</th>
			<th>Telefono Habitacion</th>
			<th>Telefono Movil</th>
			<th>Sexo</th>
			<th>Direccion</th>
			<th>Descripcion</th>
			<th>Estatus</th>
		</thead>
		<tbody>
			@foreach($clientes as $cliente)
				<tr>
					<td>{{ $cliente->id}}</td>
					<td>{{ $cliente->nombres.' '.$cliente->apellido}}</td>
					<td>{{ $cliente->cedula}}</td>
					<td>{{ $cliente->edad}}</td>
					<td>{{ $cliente->telefono_habitacion}}</td>
					<td>{{ $cliente->telefono_movil}}</td>
					<td>{{ $cliente->sexo}}</td>
					<td>{{ $cliente->direccion}}</td>
					<td>{{ $cliente->descripcion}}</td>
					<td>{{ $cliente->estatus}}</td>
					<td><a href="{{ route('admin.clientes.edit', $cliente->id) }}" class="btn btn-warning"><span class="glyphicon glyphicon-wrench"></span></a><a href="{{ route('admin.clientes.destroy', $cliente->id) }}" class="btn btn-danger" aria-hidden="true" onclick="return confirm('Seguro desea elimiar al usuario?')"><span class="glyphicon glyphicon-remove-circle" oncl aria-hidden="true"></span></a></td>
				</tr>
			@endforeach
		</tbody>
	</table>
	{!! $clientes->render() !!}
@endsection