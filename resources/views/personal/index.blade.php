<x-app-layout>
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">Personal</h4>
                                    <p class="card-category">Personal registrado</p>
                                </div>
                                <div class="card-body">
                                    @if (session('success'))
                                        <div class="alert alert-success" role="success">
                                            {{ session('success') }}
                                        </div>
                                    @endif
                                    <div class="row">
                                        <div class="col-12 text-right">
                                            <a href="{{ route('personal.create') }}" class="btn btn-sm btn-success">Añadir
                                                personal</a>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="text-primary">
                                            <th>ID</th>
                                            <th>Nombres</th>
                                            <th>Apellidos</th>
                                            <th>Puesto</th>
                                            <th>Username</th>
                                            <th>Created_at</th>
                                            <th class="text-right">Acciones</th>
                                            </thead>
                                            <tbody>
                                            @foreach ($personal as $person)
                                                <tr>
                                                    <td>{{ $person->id }}</td>
                                                    <td>{{ $person->nombres }}</td>
                                                    <td>{{ $person->apellidos }}</td>
                                                    <td>{{ $person->puesto->funcion }}</td>
                                                    <td>{{ $person->user->username }}</td>
                                                    <td>{{ $person->created_at }}</td>
                                                    <td class="td-actions text-right">
                                                        <a href="{{ route('personal.show', $person->id) }}"
                                                           class="btn btn-info"><i class="material-icons">person</i></a>
                                                        <a href="{{ route('personal.edit', $person->id) }}"
                                                           class="btn btn-warning"><i
                                                                class="material-icons">edit</i></a>
                                                        <form action="{{ route('personal.destroy', $person->id) }}"
                                                              method="POST" style="display: inline-block;"
                                                              onsubmit="return confirm('Seguro?')">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button class="btn btn-danger" type="submit" rel="tooltip">
                                                                <i class="material-icons">close</i>
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    {{ $personal->links() }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
