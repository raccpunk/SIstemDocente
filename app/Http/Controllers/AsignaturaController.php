<?php

namespace App\Http\Controllers;

use App\Models\Asignaturas;
use Illuminate\Http\Request;

/**
 * Class AsignaturaController
 * @package App\Http\Controllers
 */
class AsignaturaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $asignaturas = Asignaturas::paginate();

        return view('asignatura.index', compact('asignaturas'))
            ->with('i', (request()->input('page', 1) - 1) * $asignaturas->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $asignatura = new Asignaturas();
        return view('asignatura.create', compact('asignatura'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Asignaturas::$rules);

        $asignatura = Asignaturas::create($request->all());

        return redirect()->route('asignaturas.index')
            ->with('success', 'Asignatura created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $asignatura = Asignaturas::find($id);

        return view('asignatura.show', compact('asignatura'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $asignatura = Asignaturas::find($id);

        return view('asignatura.edit', compact('asignatura'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Asignaturas $asignatura
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Asignaturas $asignatura)
    {
        request()->validate(Asignaturas::$rules);

        $asignatura->update($request->all());

        return redirect()->route('asignaturas.index')
            ->with('success', 'Asignatura updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $asignatura = Asignaturas::find($id)->delete();

        return redirect()->route('asignaturas.index')
            ->with('success', 'Asignatura deleted successfully');
    }
}
