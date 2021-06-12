<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class CicloEscolar extends Model
{
    protected $table = 'ciclo_escolar';
    protected $primaryKey = 'id';
    protected $fillable = ['id','nombre'];
}
