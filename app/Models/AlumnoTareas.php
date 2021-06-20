<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class AlumnoTareas extends Model
{
    protected $table = 'alumno_tareas';
    protected $primaryKey = 'id';
    protected $fillable = ['id','alumno_id','tarea_id','ciclo_escolar_id','grupo_id','grado_id','created_at','calificacion'];
}
