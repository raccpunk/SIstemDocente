<?php

use App\Http\Controllers\ListaDocController;
use App\Http\Controllers\TareasController;
use Illuminate\Support\Facades\Route;
$path  = "App/Http/Controllers/";
//login
Route::get('/', function () {
    return view('auth.login');
});
//Pagina dashboard
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

//Tareas pagina de inicio
Route::get('/tasks', [TareasController::class,'index'])->middleware(['auth'])->name('Tarea.Index');
//Filtro de tareas
Route::post('/tasks',[TareasController::class,'filtro'])->middleware(['auth'])->name('tareas.filtro');
//Vista crear tarea
Route::get('/create', [TareasController::class,'create'])->middleware(['auth'])->name('Tarea.Create');
//Crear tarea
Route::post('/taskpost',[TareasController::class,'store'])->middleware(['auth'])->name('Tarea.post');
//Vista editar tarea
Route::get('/updatetask/{tarea}', [TareasController::class,'viewUpdateTask'])->middleware(['auth'])->name('Tarea.update');
//Editar tarea
Route::post('/updatetaskpost/}', [TareasController::class,'updateTask'])->middleware(['auth'])->name('Tarea.update');
//Vista de Captura de calificaciones de una tarea
Route::get('/studentstask/{tarea}/{grado}/{grupo}/{periodo}/{ciclo}',[TareasController::class,'alumnoTarea'])->middleware(['auth']);
//Capturar calificaciones
Route::post('/studenttaskpost',[TareasController::class,'storeAlumno'])->middleware(['auth'])->name('Tarea.postAlumnos');
//Vista de editar calificaciones de una tarea
Route::get('/editstudentstask/{tarea}/{grado}/{grupo}/{periodo}/{ciclo}',[TareasController::class,'viewEditStudentTask'])->middleware(['auth']);
//Editar calificaciones de una tarea
Route::post('/editstudenttaskpost',[TareasController::class,'editStudentTask'])->middleware(['auth'])->name('Tarea.postAlumnos');
//Vista de detalles de una tarea
Route::get('/detailstask/{tarea}/{grado}/{grupo}/{periodo}/{ciclo}',[TareasController::class,'detailsTarea'])->middleware(['auth']);
//Eliminar tarea
Route::get('/deletetask/{tarea}',[TareasController::class,'destroy'])->middleware(['auth']);
//Vista de descargar tareas por periodo
Route::get('/tareascalif', [TareasController::class,'viewTaskCalif'])->middleware(['auth'])->name('Tarea.Calif');
//Descargar calificaciones
Route::get('/taskcalifpost/{tarea}/{ciclo_escolar}/{grado}/{grupo}/{periodo}',[TareasController::class,'downloadTasksDoc'])->middleware(['auth'])->name('Tarea.Calif.Post');
//Vista de lista de asistencia
Route::get('/asistencia',[ListaDocController::class,'index'])->middleware(['auth'])->name('Asistencia.Index');
//Descargar lista de asistencia
Route::get('/asistenciaDoc/{grado}/{grupo}', [ListaDocController::class,'asistenciaword'])->middleware(['auth'])->name('Asistencia.Download');
//Archivo de rutas de usuario
require __DIR__ . '/auth.php';
