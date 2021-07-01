<?php

use App\Http\Controllers\ListaDocController;
use App\Http\Controllers\TareasController;
use Illuminate\Support\Facades\Route;
$path  = "App/Http/Controllers/";
//login
Route::get('/', function () {
    return view('auth.login');
});
//dashboard
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

//Tareas
Route::get('/tasks', [TareasController::class,'index'])->middleware(['auth'])->name('Tarea.Index');
Route::get('/create', [TareasController::class,'create'])->middleware(['auth'])->name('Tarea.Create');
Route::post('/taskpost',[TareasController::class,'store'])->middleware(['auth'])->name('Tarea.post');
Route::get('/studentstask/{tarea}/{grado}/{grupo}/{periodo}/{ciclo}',[TareasController::class,'alumnoTarea'])->middleware(['auth']);
Route::post('/studenttaskpost',[TareasController::class,'storeAlumno'])->middleware(['auth'])->name('Tarea.postAlumnos');
Route::get('/detailstask/{tarea}/{grado}/{grupo}/{periodo}/{ciclo}',[TareasController::class,'detailsTarea'])->middleware(['auth']);
Route::get('/TareasDoc/{tarea}/{ciclo_escolar}/{grado}/{grupo}/{periodo}', [TareasController::class,'tareasword'])->middleware(['auth'])->name('calificacion.Download');
//asistencia
Route::get('/asistencia',[ListaDocController::class,'index'])->middleware(['auth'])->name('Asistencia.Index');
Route::get('/asistenciaDoc/{grado}/{grupo}', [ListaDocController::class,'asistenciaword'])->middleware(['auth'])->name('Asistencia.Download');
require __DIR__ . '/auth.php';
