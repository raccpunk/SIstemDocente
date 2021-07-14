<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Personal extends Model
{
    protected $table = 'personal';
    protected $primaryKey = 'id';
    protected $fillable = ['id','nombres','apellidos','usuario_id','puesto_id','institucion_id','status_id'];
    public function user()
    {
        return $this->hasOne(User::class,'id','usuario_id');
    }
    public function puesto(){
        return $this->hasOne(Puestos::class,'id','puesto_id');
    }
}
