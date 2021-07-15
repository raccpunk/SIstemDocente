<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * Class Alumno
 */
class Alumno extends Model
{
    protected $table = 'alumnos';
    static $rules = [
        'nombres' => 'required',
        'apellido_paterno' => 'required',
        'sexo' => 'required',
        'status_id' => 'required',
    ];

    protected $perPage = 20;

    protected $fillable = ['id', 'nombres', 'apellido_paterno', 'apellido_materno', 'edad', 'sexo', 'status_id'];


    public function alumnoTareas()
    {
        return $this->hasMany('App\Models\AlumnoTareas', 'alumno_id', 'id');
    }

    public function grupoAlumnos()
    {
        return $this->hasMany('App\Models\GrupoAlumno', 'alumno_id', 'id');
    }

    public function statusAlumno()
    {
        return $this->hasOne('App\Models\StatusAlumno', 'id', 'status_id');
    }


}
