<?php

use App\Http\Controllers\word_pruebaController;
use App\Http\Controllers\CalificacionesController;
use Illuminate\Support\Facades\Route;
use League\CommonMark\Block\Element\Document;
use PhpOffice\PhpSpreadsheet\Worksheet\Row;
use SebastianBergmann\Template\Template;


Route::get('/', function () {
   return view('welcome');
});
Route::get('/inicio', function () {
    return view('Login');
 });
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



