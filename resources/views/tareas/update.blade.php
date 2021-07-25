<x-app-layout>
    <link rel="stylesheet" href="{{asset('css/tareas/create.css')}}">
    <div class="signup-form">
        <form action="{{route('Tarea.update')}}" method="post" class="form-horizontal">
            @csrf
            <div class="row">
                <div class="col-8 offset-4">
                    <h2>
                        <center>Editar Tarea
                            <center>
                    </h2>
                </div>
            </div>
            <input type="hidden" name="id" value="{{$tareas->id}}">

            <div class="form-group row">
                <label class="col-form-label col-4">Nombre</label>
                <div class="col-8">
                    <input value="{{$tareas->nombre}}" type="text" class="form-control" name="nombre"
                           required="required">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-form-label col-4">Descripción</label>
                <div class="col-8">
                    <input value="{{$tareas->descripcion}}" type="text" class="form-control" name="descripcion"
                           required="required">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-form-label col-4">Valor de la Tarea</label>
                <div class="col-8">
                    <input value="{{$tareas->valor}}" type="number" step="any" class="form-control" name="valor"
                           min="1" max="{{$tareas->valor}}" required="required">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-form-label col-4">Tipo</label>
                <div class="col-8">
                    <select name="tipo" id="tipo">
                        @if($tareas->tipo ==='A')
                            <option selected value="A">A</option>
                            <option value="B">B</option>
                        @else
                            <option value="A">A</option>
                            <option selected value="B">B</option>
                        @endif
                    </select>
                </div>
            </div>
            @if($tareas->isCaptured)
                <div class="form-group row">
                    <label for="materia" class="col-form-label col-4">Materia</label>
                    <select class="form-control" name="" required="required" disabled>
                        @foreach($filtrado as $item)
                            @if($tareas->materia_id == $item->asignatura_id)
                                <option selected
                                        value="{{$item->asignatura_id}}">{{\App\Models\Asignaturas::find($item->asignatura_id)->nombre}}</option>
                            @else
                                <option
                                    value="{{$item->asignatura_id}}">{{\App\Models\Asignaturas::find($item->asignatura_id)->nombre}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                <div class="form-group row">
                    <label for="periodo" class="col-form-label col-4">Periodo</label>
                    <select class="form-control" name="periodo" required="required" disabled>
                        @foreach($periodos as $item)
                            @if($tareas->periodo_id == $item->id)
                                <option selected value="{{$item->id}}">{{$item->nombre}}</option>
                            @else
                                <option value="{{$item->id}}">{{$item->nombre}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                <div class="form-group row">
                    <label for="grado" class="col-form-label col-4">Grado</label>
                    <select class="form-control" name="grado" required="required" disabled>
                        @foreach($grados as $item)
                            @if($tareas->grado_id == $item->grado_id)
                                <option selected
                                        value="{{$item->grado_id}}">{{\App\Models\Grados::find($item->grado_id)->nombre_largo}}</option>
                            @else
                                <option
                                    value="{{$item->grado_id}}">{{\App\Models\Grados::find($item->grado_id)->nombre_largo}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                <div class="form-group row">
                    <label for="grupo" class="col-form-label col-4">Grupo</label>
                    <select class="form-control" name="grupo" required="required" disabled>
                        @foreach($grupo as $item)
                            @if($tareas->grupo_id === $item->grupo_id)
                                <option selected
                                        value="{{$item->grupo_id}}">{{\App\Models\Grupos::find($item->grupo_id)->nombre}}</option>
                            @else
                                <option
                                    value="{{$item->grupo_id}}">{{\App\Models\Grupos::find($item->grupo_id)->nombre}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                <div class="form-group row">
                    <label for="ciclo_escolar" class="col-form-label col-4">Ciclo escolar</label>
                    <input name="ciclo_escolar" value="{{$ciclo->nombre}}" type="text" readonly>
                </div>
            @else
                <div class="form-group row">
                    <label for="materia" class="col-form-label col-4">Materia</label>
                    <select class="form-control" name="materia" required="required">
                        <option value="">selecciona...</option>
                        @foreach($filtrado as $item)
                            @if($tareas->materia_id == $item->asignatura_id)
                                <option selected
                                        value="{{$item->asignatura_id}}">{{\App\Models\Asignaturas::find($item->asignatura_id)->nombre}}</option>
                            @else
                                <option
                                    value="{{$item->asignatura_id}}">{{\App\Models\Asignaturas::find($item->asignatura_id)->nombre}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                <div class="form-group row">
                    <label for="periodo" class="col-form-label col-4">Periodo</label>
                    <select class="form-control" name="periodo" required="required">
                        <option value="">selecciona...</option>
                        @foreach($periodos as $item)
                            @if($tareas->periodo_id == $item->id)
                                <option selected value="{{$item->id}}">{{$item->nombre}}</option>
                            @else
                                <option value="{{$item->id}}">{{$item->nombre}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                <div class="form-group row">
                    <label for="grado" class="col-form-label col-4">Grado</label>
                    <select class="form-control" name="grado" required="required">
                        <option value="">selecciona...</option>
                        @foreach($grados as $item)
                            @if($tareas->grado_id == $item->grado_id)
                                <option selected
                                        value="{{$item->grado_id}}">{{\App\Models\Grados::find($item->grado_id)->nombre_largo}}</option>
                            @else
                                <option
                                    value="{{$item->grado_id}}">{{\App\Models\Grados::find($item->grado_id)->nombre_largo}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                <div class="form-group row">
                    <label for="grupo" class="col-form-label col-4">Grupo</label>
                    <select class="form-control" name="grupo" required="required">
                        <option value="">selecciona...</option>
                        @foreach($grupo as $item)
                            @if($tareas->grupo_id == $item->grupo_id)
                                <option selected
                                        value="{{$item->grupo_id}}">{{\App\Models\Grupos::find($item->grupo_id)->nombre}}</option>
                            @else
                                <option
                                    value="{{$item->grupo_id}}">{{\App\Models\Grupos::find($item->grupo_id)->nombre}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                <div class="form-group row">
                    <label for="ciclo_escolar" class="col-form-label col-4">Ciclo escolar</label>
                    <input name="ciclo_escolar" value="{{$ciclo->nombre}}" type="text" readonly>
                </div>
            @endif
            <div class="form-group row">
                <div class="col-8 offset-4">
                    <button id="button" type="submit" class="btn btn-primary btn-lg">Guardar</button>
                    <input type="button" class="btn btn-primary btn-lg" onclick="history.back()" name="volver atrás"
                           value="volver atrás">
                </div>
            </div>
        </form>
    </div>
</x-app-layout>
