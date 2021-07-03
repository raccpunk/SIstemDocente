<x-app-layout>
    <link rel="stylesheet" href="{{asset('css/tareas/create.css')}}">
<div class="signup-form">
    <form action="{{route('Tarea.post')}}" method="post" class="form-horizontal">
        @csrf
      	<div class="row">
        	<div class="col-8 offset-4">
				<h2><center>Agregar tarea<center></h2>
			</div>
      	</div>
        <div class="form-group row">
			<label class="col-form-label col-4">Nombre</label>
			<div class="col-8">
                <input type="text" class="form-control" name="nombre" required="required">
            </div>
        </div>
		<div class="form-group row">
			<label class="col-form-label col-4">Descripción</label>
			<div class="col-8">
                <input type="text" class="form-control" name="descripcion" required="required">
            </div>
        </div>
		<div class="form-group row">
			<label class="col-form-label col-4">Valor de la Tarea</label>
			<div class="col-8">
                <input type="number" step="any" class="form-control" name="valor" required="required">
            </div>
        </div>
        <div class="form-group row">
            <label for="materia" class="col-form-label col-4">Materia</label>
            <select class="form-control" name="materia" required="required">
                <option value="">selecciona...</option>
                @foreach($filtrado as $item)
                    <option value="{{$item->asignatura_id}}">{{\App\Models\Asignaturas::find($item->asignatura_id)->nombre}}</option>
            @endforeach
            </select>
        </div>
        <div class="form-group row">
			<label for="periodo" class="col-form-label col-4">Periodo</label>
            <select class="form-control" name="periodo" required="required">
                <option value="">selecciona...</option>
                @foreach($periodos as $item)
                    <option value="{{$item->id}}">{{$item->nombre}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group row">
            <label for="grado" class="col-form-label col-4">Grado</label>
            <select class="form-control" name="grado" required="required">
                <option value="">selecciona...</option>
                @foreach($filtrado as $item)
                    <option value="{{$item->grado_id}}">{{\App\Models\Grados::find($item->grado_id)->nombre_largo}}</option>
            @endforeach
            </select>
        </div>
        <div class="form-group row">
            <label for="grupo" class="col-form-label col-4">Grupo</label>
            <select class="form-control" name="grupo" required="required">
                <option value="">selecciona...</option>
                @foreach($grupos as $item)
                    <option value="{{$item->id}}">{{$item->nombre}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group row">
            <label for="ciclo_escolar" class="col-form-label col-4">Ciclo escolar</label>
            <input name="ciclo_escolar" value="{{$ciclo->nombre}}" type="text" readonly>
        </div>
		<div class="form-group row">
			<div class="col-8 offset-4">
				<button id="button" type="submit" class="btn btn-primary btn-lg">Guardar</button>
                <input type="button" class= "btn btn-primary btn-lg"onclick="history.back()" name="volver atrás" value="volver atrás">
            </div>
		</div>
    </form>
</div>
</x-app-layout>
