<?php

namespace App\Http\Controllers;

use App\Models\ListaDoc;
use Illuminate\Http\Request;

class ListaDocController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ListaDoc  $listaDoc
     * @return \Illuminate\Http\Response
     */
    public function show(ListaDoc $listaDoc)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ListaDoc  $listaDoc
     * @return \Illuminate\Http\Response
     */
    public function edit(ListaDoc $listaDoc)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ListaDoc  $listaDoc
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ListaDoc $listaDoc)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ListaDoc  $listaDoc
     * @return \Illuminate\Http\Response
     */
    public function destroy(ListaDoc $listaDoc)
    {
        //
    }
    public function asistenciaword()
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
        $sources = file_get_contents('C:\xampp\htdocs\sistemaDocente\app\img\imgdoc.png');


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

        //$section->addTextBreak(1);
        $section->addText('                                                                       CURSO ESCOLAR 2020-2021', $header);
        $section->addText('                                                                                               PROF:___________________________   ASIGNATURA:________________', $fontStyleName);
        $section->addText('                                                                                               MES:___________________________  UNIDAD________________ GRUPO:1°A', $fontStyleName);
        $section->addText(' ');


        $fancyTableStyleName = 'Prueba Con Tablas';
        $fancyTableStyle = array('borderSize' => 5, 'borderColor' => '000000', 'cellMargin' => 0, 'alignment' => \PhpOffice\PhpWord\SimpleType\JcTable::CENTER, 'cellSpacing' => 0);
        $fancyTableFirstRowStyle = array('borderBottomSize' => 5, 'borderBottomColor' => '000000');
        $fancyTableCellStyle = array('valign' => 'center');
        $fancyTableFontStyle = array('bold' => true);
        $phpWord->addTableStyle($fancyTableStyleName, $fancyTableStyle, $fancyTableFirstRowStyle);
        $table = $section->addTable($fancyTableStyleName);



            $table->addRow();
            $table->addCell(500)->addText(' No',$nature);
            $table->addCell(4000)->addText('NOMBRE',$nature);
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

            $table->addRow();
            $table->addCell(500)->addText(' ');
            $table->addCell(4000)->addText('');
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





        // Saving the document as OOXML file...
        $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
        $objWriter->save('Asistencia.docx');

        // Saving the document as ODF file...
        $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'ODText');
        $objWriter->save('Asistencia.odt');

        // Saving the document as HTML file...
        $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'HTML');

        return response()->download('Asistencia.docx');
    }
}


