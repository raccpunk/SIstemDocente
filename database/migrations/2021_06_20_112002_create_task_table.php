<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTaskTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tareas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('maestro_id')->references('id')->on('personal');
            $table->foreignId('materia_id')->references('id')->on('asignaturas');
            $table->foreignId('grado_id')->references('id')->on('grados');
            $table->foreignId('grupo_id')->references('id')->on('grupos');
            $table->foreignId('ciclo_escolar_id')->references('id')->on('ciclo_escolar');
            $table->foreignId('periodo_id')->references('id')->on('periodos');
            $table->text('descripcion');
            $table->text('nombre');
            $table->decimal('valor');
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
        Schema::dropIfExists('tareas');
    }
}
