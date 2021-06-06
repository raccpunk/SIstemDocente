<x-app-layout>
<div class="container mt-4">
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
