<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Asignaturas extends Model
{
    protected $table = 'asignaturas';
    protected $primaryKey = 'id';
    protected $fillable = ['id','nombre'];
}
