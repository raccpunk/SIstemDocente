<?php

namespace App\Http\Controllers;
use App\Models\Alumnos;
use App\Models\AlumnoTareas;
use App\Models\Asignaturas;
use App\Models\CicloEscolar;
use App\Models\Grados;
use App\Models\GrupoAlumno;
use App\Models\Grupos;
use App\Models\ListaDoc;
use App\Models\Periodos;
use App\Models\Personal;
use App\Models\Tareas;
use Auth;
use Illuminate\Http\Request;
class TareasController extends Controller
{

    public function index(){

        $periodos = Periodos::all();
        $grados = Grados::all();
        $grupos = Grupos::all();
        $ciclos = CicloEscolar::all();
        $asignaturas = Asignaturas::all();
        $maestro_id = Personal::where('usuario_id',Auth::user()->id)->first()->id;
        $tareas = Tareas::where('maestro_id',$maestro_id)->get();
        return view('tareas.Index', compact('periodos', 'grados', 'grupos','ciclos','asignaturas','tareas'));
    }
    public function create()
    {
        $periodos = Periodos::all();
        $grados = Grados::all();
        $grupos = Grupos::all();
        $ciclos = CicloEscolar::all();
        $asignaturas = Asignaturas::all();
        return view('tareas.Create', compact('periodos', 'grados', 'grupos','ciclos','asignaturas'));
    }

    /**
     * @param Request $request
     */
    public function store(Request $request){
        $tarea = new Tareas;
        $tarea->nombre = $request->nombre;
        $tarea->descripcion = $request->descripcion;
        $tarea->valor = $request->valor;
        $tarea->periodo_id = $request->periodo;
        $tarea->grado_id = $request->grado;
        $tarea->grupo_id = $request->grupo;
        $tarea->ciclo_escolar_id = $request->ciclo_escolar;
        $tarea->materia_id = $request->materia;
        $maestro_id = Personal::where('usuario_id',Auth::user()->id)->first()->id;
        $tarea->maestro_id = $maestro_id;
        $tarea->save();
        return $this->index();
    }
    public function alumnoTarea($tarea,$grado,$grupo,$periodo,$ciclo){
        $grupoAlumno = GrupoAlumno::where('grado_id',$grado)->where('grupo_id',$grupo)->where('ciclo_escolar_id',$ciclo)->get();
        $alumnos = [];
        foreach ($grupoAlumno as $item){
          array_push($alumnos, Alumnos::where('id',$item->alumno_id)->first());
        }
        sort($alumnos);
        return view('tareas.Alumnos',compact('alumnos','tarea','grado','grupo','periodo','ciclo'));
    }
    public function storeAlumno(Request $request){
        $alumnoTarea = new AlumnoTareas;
//        dd($request->Alumnos);
        foreach ($request->Alumnos['id'] as $key=>$alumno){
            foreach ($request->Alumnos['calif'] as $calif){
               $alumnoTarea->grupo_id = $request->grupo;
               $alumnoTarea->grado_id = $request->grado;
               $alumnoTarea->tarea_id = $request->tarea;
               $alumnoTarea->ciclo_escolar_id = $request->ciclo_escolar;
               $alumnoTarea->periodo_id = $request->periodo;
               $alumnoTarea->alumno_id = $alumno;
               $alumnoTarea->calificacion = $calif;
//               dd($alumnoTarea);
               $alumnoTarea->save();
            }
        }
        return $this->index();
    }
}
