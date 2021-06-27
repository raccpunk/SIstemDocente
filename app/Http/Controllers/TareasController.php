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
use Illuminate\Database\Eloquent\Model;
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
        $tarea->isCaptured = false;
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
    public function detailsTarea($tarea,$grado,$grupo,$periodo,$ciclo){
        $grupoAlumno = GrupoAlumno::where('grado_id',$grado)->where('grupo_id',$grupo)->where('ciclo_escolar_id',$ciclo)->get();
        $alumnos = [];
        foreach ($grupoAlumno as $item){
            array_push($alumnos, Alumnos::where('id',$item->alumno_id)->first());
        }
        sort($alumnos);
        return view('tareas.Details',compact('alumnos','tarea','grado','grupo','periodo','ciclo'));
    }
    public function storeAlumno(Request $request){
        $tareaMaestro = Tareas::find($request->tarea);

            foreach ($request->Alumnos['calif'] as $key=>$calif)
            {
                $alumnoTarea = new AlumnoTareas;
                $alumnoTarea->grupo_id = $request->grupo;
                $alumnoTarea->grado_id = $request->grado;
                $alumnoTarea->tarea_id = $request->tarea;
                $alumnoTarea->ciclo_escolar_id = $request->ciclo_escolar;
                $alumnoTarea->periodo_id = $request->periodo;
                $alumnoTarea->alumno_id = $request->Alumnos['id'][$key];
                $alumnoTarea->calificacion = $calif;
                $alumnoTarea->save();
           }
        $tareaMaestro->isCaptured = true;
        $tareaMaestro->save();
        return $this->index();
    }
}

//    public function tareasword($ciclo_escolar,$grado,$grupo,$periodo,$tarea)
//    {
//        $phpWord = new \PhpOffice\PhpWord\PhpWord();
//        $section = $phpWord->addSection(array('orientation' => 'landscape'));
//        $fontStyleName = 'oneUserDefinedStyle';
//        $phpWord->addFontStyle(
//            $fontStyleName,
//            array('name' => 'Tahoma', 'size' => 10, 'color' => '1B2232', 'bold' => true)
//        );
//        $header = array('size' => 14, 'bold' => true,'align'=>'both');
//        $nature = array('size' => 11, 'bold' => true);
//        $nature2 = array('size' => 9, 'bold' => false);
//        $sources = file_get_contents(__DIR__.'/img/imgdoc.png',true);
//        $section->addImage(
//            $sources,
//            array(
//                'width'         => 265,
//                'height'        => 100,
//                'marginTop'     => 500,
//                'marginLeft'    => 500,
//                'wrappingStyle' => 'behind',
//                'positioning' => 'absolute',
//            )
//        );
//        $nombre_ciclo = CicloEscolar::find($ciclo_escolar)->nombre;
//        $nombre_grado = Grados::find($grado)->nombre_corto;
//        $nombre_grupo = Grupos::find($grupo)->nombre;
////head document
//        //$section->addTextBreak(1);
//        $section->addText('                                                                       '.$nombre_ciclo, $header);
//        $section->addText('                                                                                               PROF:___________________________   ASIGNATURA:________________', $fontStyleName);
//        $section->addText('                                                                                               MES:___________________________  UNIDAD________________ GRUPO:'.$nombre_grado.$nombre_grupo, $fontStyleName);
//        $section->addText(' ');
//
//
//        $fancyTableStyleName = 'Prueba Con Tablas';
//        $fancyTableStyle = array('borderSize' => 5, 'borderColor' => '000000', 'cellMargin' => 0, 'alignment' => \PhpOffice\PhpWord\SimpleType\JcTable::CENTER, 'cellSpacing' => 0);
//        $fancyTableFirstRowStyle = array('borderBottomSize' => 5, 'borderBottomColor' => '000000');
//        $fancyTableCellStyle = array('valign' => 'center');
//        $fancyTableFontStyle = array('bold' => true);
//        $phpWord->addTableStyle($fancyTableStyleName, $fancyTableStyle, $fancyTableFirstRowStyle);
//        $table = $section->addTable($fancyTableStyleName);
//
//        //get alumnos
//        $alumnos = Alumnos::select('*')
//            ->join('grupo_alumnos','grupo_alumnos.alumno_id','=','alumnos.id')
//            ->where('grupo_alumnos.ciclo_escolar_id','=',$ciclo_escolar)
//            ->where('grupo_id','=',$grupo)
//            ->where('grado_id','=',$grado)->orderBy('apellido_paterno','asc')->get();
//        //head table
//        $table->addRow();
//        $table->addCell(500)->addText(' No',$nature);
//        $table->addCell(4000)->addText('NOMBRE',$nature);
////        $table->addCell(500)->addText($tarea->nombre,$nature);
////start student row
//        foreach ($alumnos as $key=>$alumno){
//            $table->addRow();
//            $table->addCell(500)->addText($key+1);
//            $table->addCell(6000)->addText($alumno->apellido_paterno.' '.$alumno->apellido_materno.' '.$alumno->nombres);
//            $table->addCell(500)->addText('');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//            $table->addCell(500)->addText(' ');
//        }
//        //create doc
//        $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
//        $objWriter->save('Calificacion.docx');
//
//        //download doc and delete after send
//        return response()->download('Calificacion.docx')->deleteFileAfterSend();
//    }
//}
