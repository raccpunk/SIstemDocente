@extends('layout')

@section('template_title')
    Grupo Alumno
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Grupo Alumno') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('grupo-alumnos.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
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
                                        
										<th>Ciclo Escolar Id</th>
										<th>Alumno Id</th>
										<th>Grupo Id</th>
										<th>Grado Id</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($grupoAlumnos as $grupoAlumno)
                                        <tr>
                                            <td>{{ ++$i }}</td>
                                            
											<td>{{ $grupoAlumno->ciclo_escolar_id }}</td>
											<td>{{ $grupoAlumno->alumno_id }}</td>
											<td>{{ $grupoAlumno->grupo_id }}</td>
											<td>{{ $grupoAlumno->grado_id }}</td>

                                            <td>
                                                <form action="{{ route('grupo-alumnos.destroy',$grupoAlumno->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('grupo-alumnos.show',$grupoAlumno->id) }}"><i class="fa fa-fw fa-eye"></i> Show</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('grupo-alumnos.edit',$grupoAlumno->id) }}"><i class="fa fa-fw fa-edit"></i> Edit</a>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $grupoAlumnos->links() !!}
            </div>
        </div>
    </div>
@endsection
