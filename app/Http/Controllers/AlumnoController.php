<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use App\Models\StatusAlumno;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

/**
 * Class AlumnoController
 * @package App\Http\Controllers
 */
class AlumnoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Application|Factory|View
     */
    public function index()
    {
        $alumnos = Alumno::paginate();
        return view('alumno.index', compact('alumnos'))
            ->with('i', (request()->input('page', 1) - 1) * $alumnos->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Application|Factory|View
     */
    public function create()
    {
        $alumno = new Alumno();
        $status = StatusAlumno::all()->pluck('descripcion','id');
        return view('alumno.create', compact('alumno','status'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return RedirectResponse
     */
    public function store(Request $request): RedirectResponse
    {
        request()->validate(Alumno::$rules);

        $alumno = Alumno::create($request->all());

        return redirect()->route('student.index')
            ->with('success', 'Alumno created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return Application|Factory|View
     */
    public function show($id)
    {
        $alumno = Alumno::find($id);

        return view('alumno.show', compact('alumno'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return Application|Factory|View
     */
    public function edit($id)
    {
        $alumno = Alumno::find($id);
        $status = StatusAlumno::all()->pluck('descripcion','id');
        return view('alumno.edit', compact('alumno','status'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Alumno $alumno
     * @return RedirectResponse
     */
    public function update(Request $request, Alumno $alumno)
    {
        request()->validate(Alumno::$rules);

        $alumno->update($request->all());

        return redirect()->route('student.index')
            ->with('success', 'Alumno updated successfully');
    }

    /**
     * @param int $id
     * @return RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $alumno = Alumno::find($id)->delete();

        return redirect()->route('student.index')
            ->with('success', 'Alumno deleted successfully');
    }
}
