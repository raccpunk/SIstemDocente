@extends('layout')

@section('template_title')
    {{ $grupoAlumno->name ?? 'Show Grupo Alumno' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Grupo Alumno</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('grupo-alumnos.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Ciclo Escolar Id:</strong>
                            {{ $grupoAlumno->ciclo_escolar_id }}
                        </div>
                        <div class="form-group">
                            <strong>Alumno Id:</strong>
                            {{ $grupoAlumno->alumno_id }}
                        </div>
                        <div class="form-group">
                            <strong>Grupo Id:</strong>
                            {{ $grupoAlumno->grupo_id }}
                        </div>
                        <div class="form-group">
                            <strong>Grado Id:</strong>
                            {{ $grupoAlumno->grado_id }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
