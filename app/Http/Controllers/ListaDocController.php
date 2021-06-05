<?php

namespace App\Http\Controllers;

use App\Models\ListaDoc;
use Illuminate\Http\Request;

class ListaDocController extends Controller
{
    public function asistenciaword($asignatura,$grado,$grupo)
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
        $path = 'App\\';
        $sources = file_get_contents('C:\xampp\htdocs\SIstemDocente\app\img\imgdoc.png');
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
//head document
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
//head table
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
//start student row
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

        //create doc
        $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
        $objWriter->save('Asistencia.docx');
        //download doc and delete after send
        return response()->download('Asistencia.docx')->deleteFileAfterSend();
    }
}


