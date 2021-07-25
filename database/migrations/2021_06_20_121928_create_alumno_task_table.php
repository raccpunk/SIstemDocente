<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAlumnoTaskTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('alumno_tareas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('alumno_id')->references('id')->on('alumnos');
            $table->foreignId('grado_id')->references('id')->on('grados');
            $table->foreignId('grupo_id')->references('id')->on('grupos');
            $table->foreignId('ciclo_escolar_id')->references('id')->on('ciclo_escolar');
            $table->foreignId('tarea_id')->references('id')->on('tareas');
            $table->foreignId('periodo_id')->references('id')->on('periodos');
            $table->char('tipo_tarea');
            $table->decimal('calificacion');
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
        Schema::dropIfExists('alumno_tareas');
    }
}
