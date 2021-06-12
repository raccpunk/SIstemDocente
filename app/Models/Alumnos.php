<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Alumnos extends Model
{
     protected $table = 'alumnos';
     protected $primaryKey = 'id';
     protected $fillable = ['id','apellido_paterno','apellido_materno','nombres'];
}
