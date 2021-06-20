<x-app-layout>
<div class="container mt-4">
    <div class="row">
        <div class="">
            <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="asignatura">Asignatura</label>
            <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="grado">Grado</label>
            <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="grupo">Grupo</label>
            <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="periodo">Periodos</label>
            <label style="font-size: 30px;" class="col-md-2 mt-2 mr-5" for="ciclo_escolar">Ciclo escolar</label>
        </div>
    </div>
    <div class="row">
        <div class="">
            <select class="col-md-2 mt-2 mr-5" name="asignatura">
                <option value="">selecciona...</option>
                @foreach($asignaturas as $item)
                    <option value="{{$item->id}}">{{$item->nombre}}</option>
                @endforeach
            </select>
            <select class="col-md-2 mt-2 mr-5" name="grado">
                <option value="">selecciona...</option>
                @foreach($grados as $item)
                    <option value="{{$item->id}}">{{$item->nombre_largo}}</option>
                @endforeach
            </select>
            <select class="col-md-2 mt-2 mr-5" name="grupo">
                <option value="">selecciona...</option>
                @foreach($grupos as $item)
                    <option value="{{$item->id}}">{{$item->nombre}}</option>
                @endforeach
            </select>
            <select class="col-md-2 mt-2 mr-5" name="periodo">
                <option value="">selecciona...</option>
                @foreach($periodos as $item)
                    <option value="{{$item->id}}">{{$item->nombre}}</option>
                @endforeach
            </select>
            <select class="col-md-2 mt-2 mr-5" name="ciclo_escolar">
               <option value="">selecciona...</option>
                @foreach($ciclos as $item)
                    <option value="{{$item->id}}">{{$item->nombre}}</option>
                @endforeach
            </select>
        </div>
    </div>
</div>
    <div class="row mt-3 mb-3">
        <div class="col text-center">
            <a href="" class="btn btn-success ">Ver Tareas</a>
            <a href="{{ route('Tarea.Create') }}" class="btn btn-success ">Nueva Tarea</a>
        </div>
    </div>
    <div class="table-responsive ml-5 mr-5">
            <table class="table table-striped">
                <thead class="table-light">

                    <tr>
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Asignatura</th>
                        <th>Grado</th>
                        <th>Grupo</th>
                        <th>Periodo</th>
                        <th>Ciclo escolar</th>
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
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
</div>
</x-app-layout>
