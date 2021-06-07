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
        <select class="col-md-3 mt-2 mr-5" name="ciclo_escolar">
            <option value="">selecciona...</option>
         </select>
         <select class="col-md-3 mt-2 mr-5" name="grado">
            <option value="">selecciona...</option>
         </select>
         <select class="col-md-3 mt-2 mr-5" name="grupo">
            <option value="">selecciona...</option>
         </select>
         <br>
         <br>
         <a href="{{url('/ListDoc')}}" class="btn btn-success ">Descargar Lista de asistencia</a>
      </div>
    </div>
</div>
</div>
</x-app-layout>
