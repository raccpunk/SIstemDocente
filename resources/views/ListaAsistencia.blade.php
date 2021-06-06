<x-app-layout>
<div class="container">
    <h1 class="mx-auto">Lista de asistencia</h1>
    <div class="row">
      <div class="col text-center">
        <select name="OS">
            <option value="1">Materia</option>
            <option value="2">...</option>
         </select>
         <select name="OS">
            <option value="1">Grado</option>
            <option value="2">Primer Grado</option>
            <option value="2">Segundo Grado</option>
            <option value="2">Tercer Grado</option>
         </select>
         <select name="OS">
            <option value="1">Grupo</option>
            <option value="2">A</option>
            <option value="3">B</option>
         </select>
         <br>
         <br>
         <a href="{{url('/ListDoc')}}" class="btn btn-success ">Descargar Lista de asistencia</a>
      </div>
    </div>
</div>
</div>
</x-app-layout>
