<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class StatusAlumno
 *
 * @property $id
 * @property $descripcion
 * @property $created_at
 * @property $updated_at
 *
 * @property Alumno[] $alumnos
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class StatusAlumno extends Model
{
    protected $table = 'status_alumno';
    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['descripcion'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function alumnos()
    {
        return $this->hasMany('App\Models\Alumno', 'status_id', 'id');
    }


}
