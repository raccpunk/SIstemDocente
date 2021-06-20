<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Personal extends Model
{
    protected $table = 'personal';
    protected $primaryKey = 'id';
    protected $fillable = ['id','nombres','apellidos','usuario_id','puesto_id','status_id'];
}
