<?php

namespace App\Http\Controllers;
use App\Models\Alumnos;
use App\Models\AlumnoTareas;
use App\Models\Asignaturas;
use App\Models\CicloEscolar;
use App\Models\Clases;
use App\Models\Grados;
use App\Models\GrupoAlumno;
use App\Models\Grupos;
use App\Models\ListaDoc;
use App\Models\Periodos;
use App\Models\Personal;
use App\Models\Tareas;
use Auth;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use PhpOffice\PhpWord\Exception\Exception;
use Symfony\Component\HttpFoundation\BinaryFileResponse;

class TareasController extends Controller
{

    /**
     * @return Application|Factory|View
     */
    public function index(){
        $maestro_id = Personal::where('usuario_id',Auth::user()->id)->first()->id;
        $clases = Clases::where('maestro_id',$maestro_id)->get();
        $periodos = Periodos::all();
        $grupos = Grupos::all();
        $filtrado = $this->super_unique($clases, 'asignatura_id');
        $tareas = Tareas::where('maestro_id',$maestro_id)->get();
        return view('tareas.Index', compact('periodos', 'grupos','filtrado','tareas'));
    }

    /**
     * @param Request $request
     * @return Application|Factory|View
     */
    public function filtro(Request $request){
        $maestro_id = Personal::where('usuario_id',Auth::user()->id)->first()->id;
        $clases = Clases::where('maestro_id',$maestro_id)->get();
        $periodos = Periodos::all();
        $grupos = Grupos::all();
        $filtrado = $this->super_unique($clases, 'asignatura_id');
        $tareas = Tareas::where('maestro_id',$maestro_id)
            ->where('materia_id',$request->asignatura)
            ->where('grado_id',$request->grado)
            ->where('grupo_id',$request->grupo)
            ->where('periodo_id',$request->periodo)
            ->get();
        return view('tareas.Index', compact('periodos', 'grupos','filtrado','tareas'));
    }

    /**
     * @return Application|Factory|View
     */
    public function create()
    {
        $maestro_id = Personal::where('usuario_id',Auth::user()->id)->first()->id;
        $clases = Clases::where('maestro_id',$maestro_id)->get();
        $periodos = Periodos::all();
        $grupos = Grupos::all();
        $filtrado = $this->super_unique($clases, 'asignatura_id');
        $ciclo = CicloEscolar::orderBy('fecha_inicio','asc')->first();
        return view('tareas.Create', compact('periodos', 'filtrado','grupos','ciclo'));
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
        $tarea->ciclo_escolar_id = CicloEscolar::orderBy('fecha_inicio','asc')->first()->id;
        $tarea->materia_id = $request->materia;
        $maestro_id = Personal::where('usuario_id',Auth::user()->id)->first()->id;
        $tarea->isCaptured = false;
        $tarea->maestro_id = $maestro_id;
        $tarea->save();
        return $this->index();
    }

    /**
     * @param $tarea
     * @return Application|Factory|View
     */
    public function viewUpdateTask($tarea){
        $maestro_id = Personal::where('usuario_id',Auth::user()->id)->first()->id;
        $clases = Clases::where('maestro_id',$maestro_id)->get();
        $periodos = Periodos::all();
        $grupos = Grupos::all();
        $filtrado = $this->super_unique($clases, 'asignatura_id');
        $ciclo = CicloEscolar::orderBy('fecha_inicio','asc')->first();
        $tareas = Tareas::find($tarea);
        return view('tareas.update',compact('tareas','periodos', 'filtrado','grupos','ciclo'));
    }

    /**
     * @param Request $request
     * @return Application|Factory|View
     */
    public function updateTask(Request $request){
//        dd($request->all());
        $tarea = Tareas::find($request->id);
        $tarea->nombre = $request->nombre;
        $tarea->descripcion = $request->descripcion;
        $tarea->valor = $request->valor;
        $tarea->periodo_id = $request->periodo;
        $tarea->grado_id = $request->grado;
        $tarea->grupo_id = $request->grupo;
        $tarea->materia_id = $request->materia;
//        if ($tarea->isCaptured)
//        {
//
//
//        }
//        else{
            $tarea->save();
//        }
        return $this->index();
    }

    /**
     * @param $tarea
     * @param $grado
     * @param $grupo
     * @param $periodo
     * @return Application|Factory|View
     */
    public function alumnoTarea($tarea, $grado, $grupo, $periodo){
        $ciclo = CicloEscolar::orderBy('fecha_inicio','asc')->first()->id;
        $grupoAlumno = GrupoAlumno::where('grado_id',$grado)->where('grupo_id',$grupo)->where('ciclo_escolar_id',$ciclo)->get();
        $alumnos = [];
        foreach ($grupoAlumno as $item){
          array_push($alumnos, Alumnos::where('id',$item->alumno_id)->first());
        }
        sort($alumnos);
        return view('tareas.Alumnos',compact('alumnos','tarea','grado','grupo','periodo','ciclo'));
    }

    /**
     * @param $tarea
     * @param $grado
     * @param $grupo
     * @param $periodo
     * @return Application|Factory|View
     */
    public function detailsTarea($tarea, $grado, $grupo, $periodo){
        $ciclo = CicloEscolar::orderBy('fecha_inicio','asc')->first()->id;
        $grupoAlumno = GrupoAlumno::where('grado_id',$grado)->where('grupo_id',$grupo)->where('ciclo_escolar_id',$ciclo)->get();
        $alumnos = [];
        foreach ($grupoAlumno as $item){
            array_push($alumnos, Alumnos::where('id',$item->alumno_id)->first());
        }
        sort($alumnos);
        return view('tareas.Details',compact('alumnos','tarea','grado','grupo','periodo','ciclo'));
    }

    /**
     * @param Request $request
     * @return Application|Factory|View
     */
    public function storeAlumno(Request $request){
        $tareaMaestro = Tareas::find($request->tarea);

            foreach ($request->Alumnos['calif'] as $key=>$calif)
            {
                $alumnoTarea = new AlumnoTareas;
                $alumnoTarea->grupo_id = $request->grupo;
                $alumnoTarea->grado_id = $request->grado;
                $alumnoTarea->tarea_id = $request->tarea;
                $alumnoTarea->ciclo_escolar_id = CicloEscolar::orderBy('fecha_inicio','asc')->first()->id;
                $alumnoTarea->periodo_id = $request->periodo;
                $alumnoTarea->alumno_id = $request->Alumnos['id'][$key];
                $alumnoTarea->calificacion = $calif;
                $alumnoTarea->save();
           }
        $tareaMaestro->isCaptured = true;
        $tareaMaestro->save();
        return $this->index();
    }

    /**
     * @param $tarea
     * @param $grado
     * @param $grupo
     * @param $periodo
     * @return Application|Factory|View
     */
    public function viewEditStudentTask($tarea, $grado, $grupo, $periodo){
        return view('tareas.Alumnos.Update');
    }

    /**
     * @return Application|Factory|View
     */
    public function editStudentTask(Request $request){
        return $this->index();
    }

    /**
     * @return Application|Factory|View
     */
    public function viewTaskCalif(){
        return view('tareas.Download');
    }

    /**
     * @param $ciclo_escolar
     * @param $grado
     * @param $grupo
     * @param $periodo
     * @param $tarea
     * @return BinaryFileResponse
     * @throws Exception
     */
    public function downloadTasksDoc($ciclo_escolar, $grado, $grupo, $periodo, $tarea)
    {
        $phpWord = new \PhpOffice\PhpWord\PhpWord();
        $section = $phpWord->addSection(array('orientation' => 'landscape'));
        $fontStyleName = 'oneUserDefinedStyle';
        $phpWord->addFontStyle(
            $fontStyleName,
            array('name' => 'Tahoma', 'size' => 10, 'color' => '1B2232', 'bold' => true)
        );
        $header = array('size' => 14, 'bold' => true,'align'=>'both');
        $nature = array('size' => 11, 'bold' => true);
        $nature2 = array('size' => 9, 'bold' => false);
        $sources = file_get_contents(__DIR__.'/img/imgdoc.png',true);
        $section->addImage(
            $sources,
            array(
                'width'         => 265,
                'height'        => 100,
                'marginTop'     => 500,
                'marginLeft'    => 500,
                'wrappingStyle' => 'behind',
                'positioning' => 'absolute',
            )
        );
        $nombre_ciclo = CicloEscolar::find($ciclo_escolar)->nombre;
        $nombre_grado = Grados::find($grado)->nombre_corto;
        $nombre_grupo = Grupos::find($grupo)->nombre;
//head document
        //$section->addTextBreak(1);
        $section->addText('                                                                       '.$nombre_ciclo, $header);
        $section->addText('                                                                                               PROF:___________________________   ASIGNATURA:________________', $fontStyleName);
        $section->addText('                                                                                               MES:___________________________  UNIDAD________________ GRUPO:'.$nombre_grado.$nombre_grupo, $fontStyleName);
        $section->addText(' ');


        $fancyTableStyleName = 'Prueba Con Tablas';
        $fancyTableStyle = array('borderSize' => 5, 'borderColor' => '000000', 'cellMargin' => 0, 'alignment' => \PhpOffice\PhpWord\SimpleType\JcTable::CENTER, 'cellSpacing' => 0);
        $fancyTableFirstRowStyle = array('borderBottomSize' => 5, 'borderBottomColor' => '000000');
        $fancyTableCellStyle = array('valign' => 'center');
        $fancyTableFontStyle = array('bold' => true);
        $phpWord->addTableStyle($fancyTableStyleName, $fancyTableStyle, $fancyTableFirstRowStyle);
        $table = $section->addTable($fancyTableStyleName);

        //get alumnos
        $alumnos = Alumnos::select('*')
            ->join('grupo_alumnos','grupo_alumnos.alumno_id','=','alumnos.id')
            ->where('grupo_alumnos.ciclo_escolar_id','=',$ciclo_escolar)
            ->where('grupo_id','=',$grupo)
            ->where('grado_id','=',$grado)->orderBy('apellido_paterno','asc')->get();
        //head table
        $table->addRow();
        $table->addCell(500)->addText(' No',$nature);
        $table->addCell(4000)->addText('NOMBRE',$nature);
//        $table->addCell(500)->addText($tarea->nombre,$nature);
//start student row
        foreach ($alumnos as $key=>$alumno){
            $table->addRow();
            $table->addCell(500)->addText($key+1);
            $table->addCell(6000)->addText($alumno->apellido_paterno.' '.$alumno->apellido_materno.' '.$alumno->nombres);
            $table->addCell(500)->addText('');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
            $table->addCell(500)->addText(' ');
        }
        //create doc
        $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
        $objWriter->save('Calificacion.docx');

        //download doc and delete after send
        return response()->download('Calificacion.docx')->deleteFileAfterSend();
    }

    /**
     * @param $array
     * @param $key
     * @return array
     */
    function super_unique($array, $key)
    {
        $temp_array = [];
        foreach ($array as &$v) {
            if (!isset($temp_array[$v[$key]]))
                $temp_array[$v[$key]] =& $v;
        }
        $array = array_values($temp_array);
        return $array;

    }

}
