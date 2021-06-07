<x-app-layout>
<div class="container mt-4">
    <div class="row">
        <div class="text-center">
            <label style="font-size: 30px;" class="col-md-3 mt-2 mr-8" for="asignatura">Asignatura</label>
            <label style="font-size: 30px;" class="col-md-3 mt-2 md:hover:text-right" for="grado">Grado</label>
            <label style="font-size: 30px;" class="col-md-2 mt-2 md:-right-2" for="grupo">Grupo</label>
            <label style="font-size: 30px;" class="col-md-3 mt-2 mr-3.5" for="ciclo_escolar">Ciclo escolar</label>
        </div>
    </div>
    <div class="row">
        <div class="col text-center">
            <select class="col-md-3 mt-2 ml-2 mr-16" name="asignatura">
                <option value="">selecciona...</option>
            </select>
            <select class="col-md-2 mt-2 mr-10" name="grado">
                <option value="">selecciona...</option>
            </select>
            <select class="col-md-2 mt-2 mr-10" name="grupo">
                <option value="">selecciona...</option>
            </select>
            <select class="col-md-3 mt-2 mr-10" name="ciclo_escolar">
               <option value="">selecciona...</option>
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
                    <th></th>
                    <th>1</th>
                    <th>2</th>
                    <th>3</th>
                    <th>4</th>
                    <th>promedio</th>
                </tr>
                    <tr>
                        <th>Nombre del alumno</th>
                        <th>%</th>
                        <th>%</th>
                        <th>%</th>
                        <th>%</th>
                        <th>100%</th>
                    </tr>

                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                </tbody>
            </table>
        </div>
</div>
</x-app-layout>
