<div class="box box-info padding-1">
    <div class="box-body">

        <div class="form-group">
            {{ Form::label('maestro') }}
            {{ Form::select('maestro_id', $maestros,$clase->maestro_id, ['class' => 'form-control' . ($errors->has('maestro_id') ? ' is-invalid' : ''), 'placeholder' => 'Maestro Id']) }}
            {!! $errors->first('maestro_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('grado') }}
            {{ Form::select('grado_id', $grados,$clase->grado_id, ['class' => 'form-control' . ($errors->has('grado_id') ? ' is-invalid' : ''), 'placeholder' => 'Grado Id']) }}
            {!! $errors->first('grado_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('grupo') }}
            {{ Form::select('grupo_id',$grupos, $clase->grupo_id, ['class' => 'form-control' . ($errors->has('grupo_id') ? ' is-invalid' : ''), 'placeholder' => 'Grupo Id']) }}
            {!! $errors->first('grupo_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('asignatura') }}
            {{ Form::select('asignatura_id', $asignaturas,$clase->asignatura_id, ['class' => 'form-control' . ($errors->has('asignatura_id') ? ' is-invalid' : ''), 'placeholder' => 'Asignatura Id']) }}
            {!! $errors->first('asignatura_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('ciclo escolar') }}
            {{ Form::select('ciclo_escolar_id', $cicloEscolar, $clase->ciclo_escolar_id, ['class' => 'form-control' . ($errors->has('ciclo_escolar_id') ? ' is-invalid' : ''), 'placeholder' => 'Ciclo Escolar Id']) }}
            {!! $errors->first('ciclo_escolar_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>
