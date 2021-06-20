<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Tareas extends Model
{
    protected $table = 'tareas';
    protected $primaryKey = 'id';
    protected $fillable = ['id','maestro_id','materia_id','ciclo_escolar_id','grupo_id','grado_id','deescripcion','nombre','valor','created_at'];
}
