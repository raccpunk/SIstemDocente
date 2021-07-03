<x-app-layout>
    <div class="row text-center mt-4">
        <h2>Captura de calificaciones</h2>
    </div>
    <div class="table-responsive m-5">
        <form action="{{route('Tarea.postAlumnos')}}" method="POST">
            @csrf
        <table id="dtDynamicVerticalScrollExample" class="table">
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
                    <td><input  type="hidden" name="Alumnos[id][]" value="{{$alumno->id}}">{{$alumno->apellido_paterno.' '.$alumno->apellido_materno.' '.$alumno->nombres}}</td>
                    <td><input type="text" class="form-control-md" value="{{\App\Models\AlumnoTareas::where('alumno_id',$alumno->id)->where('tarea_id',$tarea)->first()->calificacion}}" name="Alumnos[calif][]" readonly></td>
                </tr>
                @endforeach
            </tbody>
        </table>
            <input type="button" class= "btn btn-primary btn-lg"onclick="history.back()" name="volver atrás" value="volver atrás">
        </form>
    </div>
</x-app-layout>

