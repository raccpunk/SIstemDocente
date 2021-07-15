<?php

namespace App\Http\Controllers;

use App\Models\GrupoAlumno;
use Illuminate\Http\Request;

/**
 * Class GrupoAlumnoController
 * @package App\Http\Controllers
 */
class GrupoAlumnoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $grupoAlumnos = GrupoAlumno::paginate();

        return view('grupo-alumno.index', compact('grupoAlumnos'))
            ->with('i', (request()->input('page', 1) - 1) * $grupoAlumnos->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $grupoAlumno = new GrupoAlumno();
        return view('grupo-alumno.create', compact('grupoAlumno'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(GrupoAlumno::$rules);

        $grupoAlumno = GrupoAlumno::create($request->all());

        return redirect()->route('grupo-alumnos.index')
            ->with('success', 'GrupoAlumno created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $grupoAlumno = GrupoAlumno::find($id);

        return view('grupo-alumno.show', compact('grupoAlumno'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $grupoAlumno = GrupoAlumno::find($id);

        return view('grupo-alumno.edit', compact('grupoAlumno'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  GrupoAlumno $grupoAlumno
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GrupoAlumno $grupoAlumno)
    {
        request()->validate(GrupoAlumno::$rules);

        $grupoAlumno->update($request->all());

        return redirect()->route('grupo-alumnos.index')
            ->with('success', 'GrupoAlumno updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $grupoAlumno = GrupoAlumno::find($id)->delete();

        return redirect()->route('grupo-alumnos.index')
            ->with('success', 'GrupoAlumno deleted successfully');
    }
}
