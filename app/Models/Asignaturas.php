<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * Class Asignatura
 *
 * @property $id
 * @property $nombre
 * @property $creditos
 * @property $created_at
 * @property $updated_at
 *
 * @property Clase[] $clases
 * @property Tarea[] $tareas
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Asignaturas extends Model
{

    static $rules = [
		'nombre' => 'required',
		'creditos' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['id','nombre','creditos'];


    /**
     * @return HasMany
     */
    public function clases()
    {
        return $this->hasMany('App\Models\Clase', 'asignatura_id', 'id');
    }

    /**
     * @return HasMany
     */
    public function tareas()
    {
        return $this->hasMany('App\Models\Tarea', 'materia_id', 'id');
    }

}
