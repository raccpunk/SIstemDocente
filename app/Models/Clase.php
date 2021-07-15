<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Clase
 *
 * @property $id
 * @property $maestro_id
 * @property $grado_id
 * @property $grupo_id
 * @property $asignatura_id
 * @property $ciclo_escolar_id
 * @property $created_at
 * @property $updated_at
 *
 * @property Asignaturas $asignatura
 * @property CicloEscolar $cicloEscolar
 * @property Grado $grado
 * @property Grupo $grupo
 * @property Personal $personal
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Clase extends Model
{

    static $rules = [
		'maestro_id' => 'required',
		'grado_id' => 'required',
		'grupo_id' => 'required',
		'asignatura_id' => 'required',
		'ciclo_escolar_id' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['maestro_id','grado_id','grupo_id','asignatura_id','ciclo_escolar_id'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function asignatura()
    {
        return $this->hasOne('App\Models\Asignaturas', 'id', 'asignatura_id');
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
        return $this->hasOne('App\Models\Grados', 'id', 'grado_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function grupo()
    {
        return $this->hasOne('App\Models\Grupos', 'id', 'grupo_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function personal()
    {
        return $this->hasOne('App\Models\Personal', 'id', 'maestro_id');
    }


}
