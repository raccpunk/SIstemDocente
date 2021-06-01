<link rel="dns-prefetch" href="//fonts.gstatic.com">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css"  rel="stylesheet">
<div class="card-header"></div>
<ul class="navbar-nav ml-auto">
<div class="card-body">

</div>
<div class="container">
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
         <a href="" class="btn btn-success ">Ver Tareas</a>
<a href="{{ url('/tarea') }}" class="btn btn-success ">Nueva Tarea</a>

<input type="button" class= "btn btn-primary"onclick="history.back()" name="volver atrás" value="volver atrás">
</div>
    </div>
  </div>
</div>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap Simple Data Table</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
    color: #666;
    background: #f5f5f5;
    font-family: 'Roboto', sans-serif;
}
.table-responsive {
	margin: 30px 0;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
}
table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}
.table-wrapper {
    min-width: 1000px;
    background: #fff;
    padding: 20px;
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.pagination {
    margin: 10px 0 5px;
}
.pagination li a {
    border: none;
    min-width: 30px;
    min-height: 30px;
    color: #999;
    margin: 0 2px;
    line-height: 30px;
    border-radius: 4px !important;
    text-align: center;
    padding: 0;
}
.pagination li a:hover {
    color: #666;
}
.pagination li.active a, .pagination li.active a.page-link {
    background: #59bdb3;
}
.pagination li.active a:hover {
    background: #45aba0;
}
.pagination li:first-child a, .pagination li:last-child a {
    padding: 0 10px;
}
.pagination li.disabled a {
    color: #ccc;
}
.pagination li i {
    font-size: 17px;
    position: relative;
    top: 1px;
    margin: 0 2px;
}
</style>
</head>
<body>
<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Porcentaje</th>
                        <th>%</th>
                        <th>%</th>
                        <th>%</th>
                        <th>%</th>
                        <th>100%</th>
                    </tr>
                    <tr>
                        <th>Tarea</th>
                        <th>1.</th>
                        <th>2.</th>
                        <th>3.</th>
                        <th>4.</th>
                        <th>promedio</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nombre del alumno</td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td>Nombre del alumno</td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td>Nombre del alumno</td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td>Nombre del alumno</td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td>Nombre del alumno</td>
                        <td>8</td>
                        <td>7</td>
                        <td>8</td>
                        <td>10</td>
                        <td>8</td>
                    </tr>
                </tbody>
            </table>
            <ul class="pagination justify-content-center">


            </ul>
        </div>
    </div>
</div>
</body>
</html>
