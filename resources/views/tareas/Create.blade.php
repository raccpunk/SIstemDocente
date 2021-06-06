<x-app-layout>
    <link rel="stylesheet" href="{{asset('css/tareas/create.css')}}">
<div class="signup-form">
    <form action="/examples/actions/confirmation.php" method="post" class="form-horizontal">
      	<div class="row">
        	<div class="col-8 offset-4">
				<h2><center>Agregar Nueva Tarea<center></h2>
			</div>
      	</div>
        <div class="form-group row">
			<label class="col-form-label col-4">Nombre</label>
			<div class="col-8">
                <input type="text" class="form-control" name="username" required="required">
            </div>
        </div>
		<div class="form-group row">
			<label class="col-form-label col-4">Descripción</label>
			<div class="col-8">
                <input type="text" class="form-control" name="text" required="required">
            </div>
        </div>
		<div class="form-group row">
			<label class="col-form-label col-4">Valor de la Tarea</label>
			<div class="col-8">
                <input type="number" class="form-control" name="text" required="required">
            </div>
        </div>
        <div class="form-group row">
			<label class="col-form-label col-4">periodo</label>
			<div class="col-8">
                <input type="text" class="form-control" name="text" required="required">
            </div>
        </div>
		<div class="form-group row">
			<div class="col-8 offset-4">
				<button type="submit" class="btn btn-primary btn-lg">Guardar</button>
                <input type="button" class= "btn btn-primary btn-lg"onclick="history.back()" name="volver atrás" value="volver atrás">

            </div>
		</div>
    </form>
</div>
</x-app-layout>
