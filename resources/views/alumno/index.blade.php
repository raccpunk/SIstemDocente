<x-app-layout>
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Alumno') }}
                            </span>

                                <div class="float-right">
                                    <a href="{{ route('student.create') }}" class="btn btn-primary btn-sm float-right"
                                       data-placement="left">
                                        {{ __('Create New') }}
                                    </a>
                                </div>
                            </div>
                        </div>
                        @if ($message = Session::get('success'))
                            <div class="alert alert-success">
                                <p>{{ $message }}</p>
                            </div>
                        @endif

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead class="thead">
                                    <tr>
                                        <th>No</th>

                                        <th>Nombres</th>
                                        <th>Apellido Paterno</th>
                                        <th>Apellido Materno</th>
                                        <th>Edad</th>
                                        <th>Sexo</th>
                                        <th>Estado</th>

                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach ($alumnos as $alumno)
                                        <tr>
                                            <td>{{ ++$i }}</td>

                                            <td>{{ $alumno->nombres }}</td>
                                            <td>{{ $alumno->apellido_paterno }}</td>
                                            <td>{{ $alumno->apellido_materno }}</td>
                                            <td>{{ $alumno->edad }}</td>
                                            <td>{{ $alumno->sexo }}</td>
                                            <td>{{ $alumno->statusAlumno->descripcion }}</td>

                                            <td>
                                                <form action="{{ route('student.destroy',$alumno->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary "
                                                       href="{{ route('student.show',$alumno->id) }}"><i
                                                            class="fa fa-fw fa-eye"></i> Show</a>
                                                    <a class="btn btn-sm btn-success"
                                                       href="{{ route('student.edit',$alumno->id) }}"><i
                                                            class="fa fa-fw fa-edit"></i> Edit</a>
                                                    @csrf
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    {!! $alumnos->links() !!}
                </div>
            </div>
        </div>
    </div>

</x-app-layout>
