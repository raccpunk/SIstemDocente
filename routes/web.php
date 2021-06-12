<?php

use App\Http\Controllers\ListaDocController;
use Illuminate\Support\Facades\Route;
$path  = "App/Http/Controllers/";
Route::get('/', function () {
    return view('auth.login');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');
//asistencia
//Tareas
Route::get('/tareas', function () {
    return view('tareas.Index');
})->middleware(['auth'])->name('Tarea.Index');
Route::get('/create', function () {
    return view('tareas.Create');
})->middleware(['auth'])->name('Tarea.Create');
Route::get('/asistencia',[ListaDocController::class,'index'])->middleware(['auth'])->name('Asistencia.Index');
Route::get('/asistenciaDoc/{ciclo_escolar}/{grado}/{grupo}', [ListaDocController::class,'asistenciaword'])->middleware(['auth'])->name('Asistencia.Download');
require __DIR__ . '/auth.php';
