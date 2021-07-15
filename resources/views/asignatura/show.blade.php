@extends('layout')

@section('template_title')
    {{ $asignatura->name ?? 'Show Asignatura' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Asignatura</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('asignaturas.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre:</strong>
                            {{ $asignatura->nombre }}
                        </div>
                        <div class="form-group">
                            <strong>Creditos:</strong>
                            {{ $asignatura->creditos }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
