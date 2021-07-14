<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Instituciones extends Model
{
    protected $table = 'instituciones';
    protected $primaryKey = 'id';
    protected $fillable = ['id','nombre'];
}
