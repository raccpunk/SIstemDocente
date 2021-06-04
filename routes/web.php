<?php

use App\Http\Controllers\word_pruebaController;
use App\Http\Controllers\CalificacionesController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use League\CommonMark\Block\Element\Document;
use PhpOffice\PhpSpreadsheet\Worksheet\Row;
use SebastianBergmann\Template\Template;
$path = 'App\\Http\\Controllers\\';
 Route::resource('/',$path.'LoginController');

 Route::get('/menu', function () {
    return view('Menu');
 });

 Route::get('/menutareas', function () {
    return view('menutareas');
 });
 Route::get('/tarea', function () {
    return view('Tarea');
 });
 Route::get('/asistencia', function () {
    return view('ListaAsistencia');
 });


 Route::get('/ListDoc', 'App\Http\Controllers\ListaDocController@asistenciaword');
