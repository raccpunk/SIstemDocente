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
Route::get('/tareas', [TareasController::class,'index'])->middleware(['auth'])->name('Tarea.Index');
Route::get('/create', [TareasController::class,'create'])->middleware(['auth'])->name('Tarea.Create');
Route::post('/taskpost',[TareasController::class,'store'])->middleware(['auth'])->name('Tarea.post');

//asistencia
Route::get('/asistencia',[ListaDocController::class,'index'])->middleware(['auth'])->name('Asistencia.Index');
Route::get('/asistenciaDoc/{ciclo_escolar}/{grado}/{grupo}', [ListaDocController::class,'asistenciaword'])->middleware(['auth'])->name('Asistencia.Download');
require __DIR__ . '/auth.php';
