<x-app-layout>
    <div class="container">
        <h2 class="m-auto">Descargar calificaciones del periodo</h2>
        <div class="row">
            @if (session('danger'))
                <div class="alert alert-danger" role="success">
                    {{ session('danger') }}
                </div>
            @endif
            <div class="text-center">

                <select class=" wrapper col-md-2 mt-2 mr-5" name="asignatura" id="asignatura" required>
                    <option value="">Asignatura...</option>
                    @foreach($filtrado as $item)
                        <option
                            value="{{$item->asignatura_id}}">{{\App\Models\Asignaturas::find($item->asignatura_id)->nombre}}</option>
                    @endforeach
                </select>
                <select class=" wrapper col-md-2 mt-2 mr-5" name="grado" id="grado" required>
                    <option value="">Grado...</option>
                    @foreach($grados as $item)
                        <option
                            value="{{$item->grado_id}}">{{\App\Models\Grados::find($item->grado_id)->nombre_largo}}</option>
                    @endforeach
                </select>
                <select class=" wrapper col-md-2 mt-2 mr-5" name="grupo" id="grupo" required>
                    <option value="">Grupo...</option>
                    @foreach($grupos as $item)
                        <option
                            value="{{$item->grupo_id}}">{{\App\Models\Grupos::find($item->grupo_id)->nombre}}</option>
                    @endforeach
                </select>
                <select class="wrapper col-md-2 mt-2 mr-5" name="periodo" id="periodo" required>
                    <option value="">Periodo...</option>
                    @foreach($periodos as $item)
                        <option value="{{$item->id}}">{{$item->nombre}}</option>
                    @endforeach
                </select>
                <select class="wrapper col-md-2 mt-2 mr-5" name="tipo" id="tipo" required>
                    <option value="">Momento...</option>
                    @foreach($tipos as $item)
                        <option value="{{$item->tipo}}">{{$item->tipo}}</option>
                    @endforeach
                </select>
                <div class="mt-3 mb-3">
                    <button id="button" class="btn btn-success" type="submit">Descargar</button>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
<script type="application/javascript">
    let button = document.getElementById('button');
    button.addEventListener('click', function () {
        let asignatura = document.getElementById('asignatura').value
        let periodo = document.getElementById('periodo').value
        let grado = document.getElementById('grado').value;
        let grupo = document.getElementById('grupo').value;
        let tipo = document.getElementById('tipo').value;
        url = `http://${window.location.host}/taskcalifperiod/${asignatura}/${grado}/${grupo}/${periodo}/${tipo}`;
        window.open(url)
    });
</script>
