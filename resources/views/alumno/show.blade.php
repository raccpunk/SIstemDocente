<x-app-layout>
    <section class="container container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Alumno</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('student.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Nombres:</strong>
                            {{ $alumno->nombres }}
                        </div>
                        <div class="form-group">
                            <strong>Apellido Paterno:</strong>
                            {{ $alumno->apellido_paterno }}
                        </div>
                        <div class="form-group">
                            <strong>Apellido Materno:</strong>
                            {{ $alumno->apellido_materno }}
                        </div>
                        <div class="form-group">
                            <strong>Edad:</strong>
                            {{ $alumno->edad }}
                        </div>
                        <div class="form-group">
                            <strong>Sexo:</strong>
                            {{ $alumno->sexo }}
                        </div>
                        <div class="form-group">
                            <strong>Status Id:</strong>
                            {{ $alumno->statusAlumno->descripcion }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</x-app-layout>
