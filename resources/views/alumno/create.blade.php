<x-app-layout>
    <section class="container container-fluid">
        <div class="row">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">Create Alumno</span>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('student.store') }}" role="form"
                              enctype="multipart/form-data">
                            @csrf

                            @include('alumno.form')

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</x-app-layout>
