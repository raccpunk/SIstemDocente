<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePersonalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::drop('personal');
        Schema::create('puestos', function (Blueprint $table) {
            $table->id();
            $table->string('funcion');
            $table->string("descripcion");
            $table->timestamps();
        });
        Schema::create('instituciones', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string("dirrecion");
            $table->string("clave");
            $table->string("email");
            $table->timestamps();
        });
        Schema::create('personal', function (Blueprint $table) {
            $table->id();
            $table->string('nombres');
            $table->string('apellidos');
            $table->string('asignatura_id');
            $table->foreignId('usuario_id')->references('id')->on('users');
            $table->foreignId('puesto_id')->references('id')->on('puestos');
            $table->foreignId('institucion_id')->references('id')->on('instituciones');
            $table->foreignId('status_id')->references('id')->on('status_personal');
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('personal');
        Schema::dropIfExists('puestos');
        Schema::dropIfExists('instituciones');
    }
}
