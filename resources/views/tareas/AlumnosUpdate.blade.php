<x-app-layout>
    <style>
        table.dataTable thead .sorting:after,
        table.dataTable thead .sorting:before,
        table.dataTable thead .sorting_asc:after,
        table.dataTable thead .sorting_asc:before,
        table.dataTable thead .sorting_asc_disabled:after,
        table.dataTable thead .sorting_asc_disabled:before,
        table.dataTable thead .sorting_desc:after,
        table.dataTable thead .sorting_desc:before,
        table.dataTable thead .sorting_desc_disabled:after,
        table.dataTable thead .sorting_desc_disabled:before {
            bottom: .5em;
        }
    </style>
    <div class="row text-center mt-4">
        <h2>Editar calificaciones de la tarea "{{\App\Models\Tareas::find($tarea)->nombre}}"</h2>
    </div>
    <div class="container">
        <div class="table-responsive ">
            <form action="{{route('Tarea.postAlumnos')}}" method="POST">
                @csrf
                <table class="table">
                    <thead class="text-center table-dark">
                    <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Calificacion</th>
                    </tr>
                    </thead>
                    <tbody class="text-center">
                    @foreach($alumnos as $key=>$alumno)
                        <tr>
                            <td>{{$key + 1}}</td>
                            <td><input type="hidden" name="Alumnos[id][]"
                                       value="{{$alumno->id}}">{{$alumno->apellido_paterno.' '.$alumno->apellido_materno.' '.$alumno->nombres}}
                            </td>
                            <td>
                                @if(\App\Models\AlumnoTareas::where('tarea_id',$tarea)->where('alumno_id',$alumno->id)->first() !== null)
                                    <input type="number" class="form-control-md" name="Alumnos[calif][]" required max="10" min="1"
                                           value="{{\App\Models\AlumnoTareas::where('tarea_id',$tarea)->where('alumno_id',$alumno->id)->first()->calificacion}}">
                                @else
                                    <input type="number" class="form-control-md" name="Alumnos[calif][]" required
                                           value="0" max="10" min="1">
                                @endif
                            </td>
                            <input type="hidden" name="tarea" value="{{$tarea}}">
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <button type="submit" class="btn btn-success">Enviar</button>
            </form>
        </div>
    </div>
</x-app-layout>
