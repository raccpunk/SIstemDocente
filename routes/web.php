<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');
//asistencia
Route::get('/asistencia', function () {
    return view('ListaAsistencia');
})->middleware(['auth'])->name('asistencia');
//Tareas
Route::get('/tareas', function () {
    return view('tareas.Index');
})->middleware(['auth'])->name('Tarea.Index');
Route::get('/create', function () {
    return view('tareas.Create');
})->middleware(['auth'])->name('Tarea.Create');
require __DIR__.'/auth.php';
