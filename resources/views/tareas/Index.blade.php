<x-app-layout>
    <div class="container mt-4">
        <div class="row">
            <div class="text-center">
                <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="asignatura">Asignatura</label>
                <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="grado">Grado</label>
                <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="grupo">Grupo</label>
                <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="periodo">Periodos</label>
                <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="periodo">Momento</label>
            </div>
        </div>

        <div class="row">
            <div class="text-center">
                <form action="{{route('tareas.filtro')}}" method="POST">
                    @csrf
                    <select class=" wrapper col-md-2 mt-2 mr-5" name="asignatura" id="asignatura" required>
                        <option value="">selecciona...</option>
                        @foreach($filtrado as $item)
                            <option
                                value="{{$item->asignatura_id}}">{{\App\Models\Asignaturas::find($item->asignatura_id)->nombre}}</option>
                        @endforeach
                    </select>
                    <select class=" wrapper col-md-2 mt-2 mr-5" name="grado" id="grado" required>
                        <option value="">selecciona...</option>
                        @foreach($grados as $item)
                            <option
                                value="{{$item->grado_id}}">{{\App\Models\Grados::find($item->grado_id)->nombre_largo}}</option>
                        @endforeach
                    </select>
                    <select class=" wrapper col-md-2 mt-2 mr-5" name="grupo" id="grupo" required>
                        <option value="">selecciona...</option>
                        @foreach($grupos as $item)
                            <option
                                value="{{$item->grupo_id}}">{{\App\Models\Grupos::find($item->grupo_id)->nombre}}</option>
                        @endforeach
                    </select>
                    <select class="wrapper col-md-2 mt-2 mr-5" name="periodo" id="periodo" required>
                        <option value="">selecciona...</option>
                        @foreach($periodos as $item)
                            <option value="{{$item->id}}">{{$item->nombre}}</option>
                        @endforeach
                    </select>
                    <select class="wrapper col-md-2 mt-2 mr-5" name="tipo" id="tipo" required>
                        <option value="">selecciona...</option>
                        @foreach($tipo as $item)
                            <option value="{{$item->tipo}}">{{$item->tipo}}</option>
                        @endforeach
                    </select>
                    <div class="mt-3 mb-3">
                        <button class="btn btn-success" type="submit">Filtrar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="row mt-3 mb-3">
        <div class="col text-center">
            <a href="" class="btn btn-success ">Ver Tareas</a>
            <a href="{{ route('Tarea.Create') }}" class="btn btn-success ">Nueva Tarea</a>
            <a href="{{ route('Tarea.Calif') }}" class="btn btn-success ">Descargar Calificaciones del periodo</a>
        </div>
    </div>
    <div class="container">
        <div class="table-responsive">
            <table id="dtDynamicVerticalScrollExample" class="table table-striped">
                <thead class="table-dark">

                <tr>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Valor</th>
                    <th>Asignatura</th>
                    <th>Grado</th>
                    <th>Grupo</th>
                    <th>Periodo</th>
                    <th>Ciclo escolar</th>
                    <th>Momento</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                @foreach($tareas as $tarea)
                    <tr>
                        <td>{{$tarea->nombre}}</td>
                        <td>{{$tarea->descripcion}}</td>
                        <td>{{$tarea->valor}}</td>
                        <td>{{\App\Models\Asignaturas::find($tarea->materia_id)->nombre}}</td>
                        <td>{{\App\Models\Grados::find($tarea->grado_id)->nombre_corto}}</td>
                        <td>{{\App\Models\Grupos::find($tarea->grupo_id)->nombre}}</td>
                        <td>{{\App\Models\Periodos::find($tarea->periodo_id)->nombre}}</td>
                        <td>{{\App\Models\CicloEscolar::find($tarea->ciclo_escolar_id)->nombre}}</td>
                        <td>{{$tarea->tipo}}</td>
                        @if($tarea->isCaptured)
                            <td class="text-center">
                                <a class="mr-2"
                                   href="{{url('/detailstask/'.$tarea->id).'/'.$tarea->grado_id.'/'.$tarea->grupo_id.'/'.$tarea->periodo_id.'/'.$tarea->ciclo_escolar_id}}"
                                   title="Ver detalles"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <a class="mr-2"
                                   href="{{url('/editstudentstask/'.$tarea->id).'/'.$tarea->grado_id.'/'.$tarea->grupo_id.'/'.$tarea->periodo_id.'/'.$tarea->ciclo_escolar_id}}"
                                   title="Editar calificaciones"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                <a class="mr-2" href="{{url('/updatetask/'.$tarea->id)}}" title="Editar tarea"><i
                                        class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                <a class="mr-2" href="{{url('/deletetask/'.$tarea->id)}}" title="Eliminar tarea"><i
                                        class="fa fa-trash" aria-hidden="true"></i></a>
                            </td>

                        @else
                            <td class="text-center">
                                <a class="mr-2"
                                   href="{{url('/studentstask/'.$tarea->id).'/'.$tarea->grado_id.'/'.$tarea->grupo_id.'/'.$tarea->periodo_id.'/'.$tarea->ciclo_escolar_id}}"
                                   title="Capturar"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                <a class="mr-2" href="{{url('/updatetask/'.$tarea->id)}}" title="Editar tarea"><i
                                        class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                <a class="mr-2" href="{{url('/deletetask/'.$tarea->id)}}" title="Eliminar tarea"><i
                                        class="fa fa-trash" aria-hidden="true"></i></a>
                            </td>
                        @endif
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    </div>
    {{--    <script src="js/tareas/index.js"></script>--}}
</x-app-layout>
