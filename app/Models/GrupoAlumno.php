<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class GrupoAlumno
 *
 * @property $id
 * @property $ciclo_escolar_id
 * @property $alumno_id
 * @property $grupo_id
 * @property $grado_id
 * @property $created_at
 * @property $updated_at
 *
 * @property Alumno $alumno
 * @property CicloEscolar $cicloEscolar
 * @property Grado $grado
 * @property Grupo $grupo
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class GrupoAlumno extends Model
{

    static $rules = [
		'ciclo_escolar_id' => 'required',
		'alumno_id' => 'required',
		'grupo_id' => 'required',
		'grado_id' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['id','ciclo_escolar_id','alumno_id','grupo_id','grado_id'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function alumno()
    {
        return $this->hasOne('App\Models\Alumno', 'id', 'alumno_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function cicloEscolar()
    {
        return $this->hasOne('App\Models\CicloEscolar', 'id', 'ciclo_escolar_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function grado()
    {
        return $this->hasOne('App\Models\Grado', 'id', 'grado_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function grupo()
    {
        return $this->hasOne('App\Models\Grupo', 'id', 'grupo_id');
    }


}
