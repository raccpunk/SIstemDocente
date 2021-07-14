<?php

namespace App\Http\Controllers;

use App\Models\Instituciones;
use App\Models\Personal;
use App\Models\Puestos;
use App\Models\User;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Spatie\Permission\Models\Role;

class PersonalController extends Controller
{
    //todo: create controller for Personal
    /**
     * Display a listing of the resource.
     *
     * @return Application|Factory|View
     */
    public function index(): View|Factory|Application
    {
        $personal = Personal::paginate(10);
        return view('personal.index', compact('personal'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Application|Factory|View
     */
    public function create(): Application|Factory|View
    {
        $users = User::all()->pluck('email', 'id');
        $puestos = Puestos::all()->pluck('funcion', 'id');
        $instituciones = Instituciones::all()->pluck('nombre', 'id');
        return view('personal.create', compact('users', 'puestos', 'instituciones'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return RedirectResponse
     */
    public function store(Request $request): RedirectResponse
    {
        Personal::create($request->only('nombres', 'apellidos', 'telefono', 'puesto_id', 'usuario_id', 'institucion_id','status_id')) ;

        return redirect()->route('personal.index')->with('success', 'Personal creado correctamente');
    }

    /**
     * Display the specified resource.
     *
     * @param Personal $personal
     * @return Application|Factory|View
     */
    public function show(Personal $personal): Application|Factory|View
    {
        return view('personal.show', compact('personal'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Personal $personal
     * @return Application|Factory|View
     */
    public function edit(Personal $personal): Application|Factory|View
    {
        $users = User::all()->pluck('email', 'id');
        $personal->load($users);
        return view('personal.edit', compact('personal'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Personal $personal
     * @return RedirectResponse
     */
    public function update(Request $request, Personal $personal): RedirectResponse
    {
        $personal->update($request);
        return redirect()->route('personal.index')->with('success', 'Personal actualizado correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Personal $personal
     * @return RedirectResponse
     */
    public function destroy(Personal $personal): RedirectResponse
    {
        $personal->delete();
        return redirect()->route('personal.index')->with('success', 'Personal eliminado correctamente');
    }
}
