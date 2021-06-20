<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Periodos extends Model
{
    protected $table = 'periodos';
    protected $primaryKey = 'id';
    protected $fillable = ['id','nombre','fecha_inicio','fecha_fin'];
}
