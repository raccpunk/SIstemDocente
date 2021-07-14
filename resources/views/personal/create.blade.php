<x-app-layout>
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('personal.store') }}" method="post" class="form-horizontal">
                        @csrf
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title">Personal</h4>
                                <p class="card-category">Ingresar datos</p>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <label for="" class="col-sm-2 col-form-label">Nombres</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="nombres" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <label for="" class="col-sm-2 col-form-label">Apellidos</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="apellidos" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <label for="" class="col-sm-2 col-form-label">Telefono</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="telefono" maxlength="10" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <select name="usuario_id" class="form-select form-select-lg form-control mt-5" required>
                                            <option value="">selecciona un usuario</option>
                                        @foreach($users as $id=>$user)
                                            <option value="{{$id}}">{{$user}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="row">
                                    <select name="puesto_id" class="form-select form-select-lg form-control mt-5" required>
                                        <option value="">selecciona un puesto</option>
                                        @foreach($puestos as $id=>$puesto)
                                            <option value="{{$id}}">{{$puesto}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="row">
                                    <select name="institucion_id" class="form-select form-select-lg form-control mt-5" required>
                                        <option value="">selecciona una institucion</option>
                                        @foreach($instituciones as $id=>$institucion)
                                            <option value="{{$id}}">{{$institucion}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <hr>
                                <input type="hidden" name="status_id" value="1">
                            </div>
                            <!--Footer-->
                            <div class="card-footer ml-auto mr-auto">
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                            <!--End footer-->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
