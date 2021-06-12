<x-app-layout>
    <div class="container">
        <div class="row text-center mt-5">
            <h1 class="mx-auto">Lista de asistencia</h1>
        </div>
        <div class="row">
            <div class="col text-center">
                <label style="font-size: 30px;" class="col-md-3 mt-2" for="ciclo_escolar">Ciclo escolar</label>
                <label style="font-size: 30px;" class="col-md-3 mt-2" for="grado">Grado</label>
                <label style="font-size: 30px;" class="col-md-3 mt-2" for="grupo">Grupo</label>
            </div>
        </div>
        <div class="row">
                <div class="col text-center">
                    <select class="col-md-3 mt-2 mr-5" name="ciclo_escolar" id ='ciclo_escolar'>
                        <option value="">selecciona...</option>
                    @foreach($ciclo_escolar as $item)
                            <option value="{{$item->id}}">{{$item->nombre}}</option>
                        @endforeach
                    </select>
                    <select class="col-md-3 mt-2 mr-5" name="grado" id="grado">
                        <option value="">selecciona...</option>
                        @foreach($grados as $item)
                            <option value="{{$item->id}}">{{$item->nombre_largo}}</option>
                        @endforeach
                    </select>
                    <select class="col-md-3 mt-2 mr-5" name="grupo" id="grupo">
                        <option value="">selecciona...</option>
                        @foreach($grupos as $item)
                            <option value="{{$item->id}}">{{$item->nombre}}</option>
                        @endforeach
                    </select>
                    <br>
                    <br>
                    <button id="button" class="btn btn-success ">Descargar Lista de asistencia</button>
                </div>
        </div>
    </div>
    <script type="application/javascript">
        let button = document.getElementById('button');

        button.addEventListener('click',function () {
            let ciclo_escolar = document.getElementById('ciclo_escolar').value;
            let grado = document.getElementById('grado').value;
            let grupo = document.getElementById('grupo').value;
            console.log(grado)
            url = `http://${window.location.host}/asistenciaDoc/${ciclo_escolar}/${grado}/${grupo}`;
            window.open(url)
        });

    </script>
</x-app-layout>
