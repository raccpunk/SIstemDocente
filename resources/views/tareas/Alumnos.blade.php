<x-app-layout>
    <div class="row text-center mt-4">
        <h2>Captura de calificaciones de la tarea {{\App\Models\Tareas::find($tarea)->nombre}}</h2>
    </div>
    <div class="container">
        <div class="table-responsive m-5">
            <form action="{{route('Tarea.Alumnos')}}" method="POST">
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
                            <td><input max="10" min="1" type="number" class="form-control-md" name="Alumnos[calif][]" required></td>
                            <input type="hidden" name="grupo" value="{{$grupo}}">
                            <input type="hidden" name="grado" value="{{$grado}}">
                            <input type="hidden" name="ciclo_escolar" value="{{$ciclo}}">
                            <input type="hidden" name="tarea" value="{{$tarea}}">
                            <input type="hidden" name="periodo" value="{{$periodo}}">
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <button type="submit" class="btn btn-success">Enviar</button>
            </form>
        </div>
    </div>
</x-app-layout>

