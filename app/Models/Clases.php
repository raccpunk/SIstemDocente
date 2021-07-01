<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Clases extends Model
{
     protected $table = 'clases';
     protected $primaryKey = 'id';
     protected $fillable = ['id','maestro_id','grupo_id','ciclo_escolar_id','grado_id','asignatura_id'];
}
