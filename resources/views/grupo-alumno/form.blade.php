<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('ciclo_escolar_id') }}
            {{ Form::text('ciclo_escolar_id', $grupoAlumno->ciclo_escolar_id, ['class' => 'form-control' . ($errors->has('ciclo_escolar_id') ? ' is-invalid' : ''), 'placeholder' => 'Ciclo Escolar Id']) }}
            {!! $errors->first('ciclo_escolar_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('alumno_id') }}
            {{ Form::text('alumno_id', $grupoAlumno->alumno_id, ['class' => 'form-control' . ($errors->has('alumno_id') ? ' is-invalid' : ''), 'placeholder' => 'Alumno Id']) }}
            {!! $errors->first('alumno_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('grupo_id') }}
            {{ Form::text('grupo_id', $grupoAlumno->grupo_id, ['class' => 'form-control' . ($errors->has('grupo_id') ? ' is-invalid' : ''), 'placeholder' => 'Grupo Id']) }}
            {!! $errors->first('grupo_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('grado_id') }}
            {{ Form::text('grado_id', $grupoAlumno->grado_id, ['class' => 'form-control' . ($errors->has('grado_id') ? ' is-invalid' : ''), 'placeholder' => 'Grado Id']) }}
            {!! $errors->first('grado_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>