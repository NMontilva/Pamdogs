<hr>
@for ($i = 0; $i <= 5; $i++)
	{{$i}}
@endfor
<hr>
@if (1 == 1)
	{{ "Es igual a 1"}}
@endif
<hr>
@foreach($user->empleado as $empleado)
	{{$empleado->nombres_empleado}}
@endforeach
<hr>
@foreach($user->servicio as $servicio)
	{{$servicio->nombre_servicios}}
@endforeach
<hr>
