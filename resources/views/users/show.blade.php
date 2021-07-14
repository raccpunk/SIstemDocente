<x-app-layout>
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <div class="card-title">Usuarios</div>
                            <p class="card-category">Vista detallada del usuario {{ $user->name }}</p>
                        </div>
                        <!--body-->
                        <div class="card-body">
                            @if (session('success'))
                                <div class="alert alert-success" role="success">
                                    {{ session('success') }}
                                </div>
                        @endif
                        <!--Start third-->
                            <div class="col-md-12">
                                <div class="card card-user">
                                    <div class="card-body">
                                        <table class="table table-bordered table-striped">
                                            <tbody>
                                            <tr>
                                                <th>ID</th>
                                                <td>{{ $user->id }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Email</th>
                                                <td><span class="badge bg-primary">{{ $user->email }}</span></td>
                                            </tr>
                                            <tr>
                                                <th>Username</th>
                                                <td>{!! $user->username !!}</td>
                                            </tr>
                                            <tr>
                                                <th>Roles</th>
                                                <td>
                                                    @foreach($roles as $id=>$role)
                                                        <label for="" class="col-sm-2 col-form-label">{{$role}}
                                                            <input type="checkbox" name="roles[]"
                                                                   value="{{$id}}"
                                                                   {{ $user->roles->contains($id) ? 'checked' : '' }} onclick="javascript: return false;">
                                                        </label>
                                                    @endforeach
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Created at</th>
                                                <td>{{  $user->created_at  }}</a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="card-footer">
                                        <div class="button-container">
                                            <a href="{{ route('users.index') }}"
                                               class="btn btn-sm btn-success mr-3"> Volver </a>
                                            <a href="{{ route('users.edit',$user->id) }}"
                                               class="btn btn-sm btn-primary"> Editar </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end third-->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</x-app-layout>
