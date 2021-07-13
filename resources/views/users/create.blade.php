<x-app-layout>
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('users.store') }}" method="post" class="form-horizontal">
                        @csrf
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title">Usuario</h4>
                                <p class="card-category">Ingresar datos</p>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <label for="username" class="col-sm-2 col-form-label">Nombre de usuario</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="username"
                                               placeholder="Ingrese su nombre de usuario" value="{{ old('username') }}">
                                        @if ($errors->has('username'))
                                            <span class="error text-danger"
                                                  for="input-username">{{ $errors->first('username') }}</span>
                                        @endif
                                    </div>
                                </div>
                                <div class="row">
                                    <label for="email" class="col-sm-2 col-form-label">Correo</label>
                                    <div class="col-sm-7">
                                        <input type="email" class="form-control" name="email"
                                               placeholder="Ingrese su correo" value="{{ old('email') }}">
                                        @if ($errors->has('email'))
                                            <span class="error text-danger"
                                                  for="input-email">{{ $errors->first('email') }}</span>
                                        @endif
                                    </div>
                                </div>
                                <div class="row">
                                    <label for="password" class="col-sm-2 col-form-label">Contraseña</label>
                                    <div class="col-sm-7">
                                        <input type="password" class="form-control" name="password"
                                               placeholder="Contraseña">
                                        @if ($errors->has('password'))
                                            <span class="error text-danger"
                                                  for="input-password">{{ $errors->first('password') }}</span>
                                        @endif
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <label for="">Roles:</label>
                                    @foreach($roles as $role)
                                        <label for="" class="col-sm-2 col-form-label">{{$role->name}}
                                            <input type="checkbox" name="roles[]" id="" value="{{$role->id}}">
                                        </label>
                                    @endforeach
                                </div>
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
