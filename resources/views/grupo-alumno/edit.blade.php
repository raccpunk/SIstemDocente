@extends('layout')

@section('template_title')
    Update Grupo Alumno
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">Update Grupo Alumno</span>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('grupo-alumnos.update', $grupoAlumno->id) }}"  role="form" enctype="multipart/form-data">
                            {{ method_field('PATCH') }}
                            @csrf

                            @include('grupo-alumno.form')

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
