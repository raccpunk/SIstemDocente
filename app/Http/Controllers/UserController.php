<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserCreateRequest;
use App\Http\Requests\UserEditRequest;
use App\Models\User;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Traits\HasRoles;


class UserController extends Controller
{
    use HasRoles;
    /**
     * @return Factory|View|Application
     */
    public function index(): Factory|View|Application
    {
        $users = User::paginate(5);
        return view('users.index', compact('users'));
    }

    /**
     * @return Application|Factory|View
     */
    public function create(): View|Factory|Application
    {
        $roles = Role::all();
        return view('users.create',compact('roles'));
    }

    /**
     * @param UserCreateRequest $request
     * @return RedirectResponse
     */
    public function store(UserCreateRequest $request): RedirectResponse
    {

        $user = User::create($request->only( 'username', 'email')
            + [
                'password' => bcrypt($request->input('password')),
            ]);
        $user->roles()->sync($request->roles);
        return redirect()->route('users.show', $user->id)->with('success', 'Usuario creado correctamente');
    }

    public function show(User $user): Factory|View|Application
    {
        return view('users.show', compact('user'));
    }

    /**
     * @param User $user
     * @return Factory|View|Application
     */
    public function edit(User $user): Factory|View|Application
    {
        $roles = Role::all();
        return view('users.edit',compact('roles','user'));
    }

    /**
     * @param UserEditRequest $request
     * @param User $user
     * @return RedirectResponse
     */
    public function update(UserEditRequest $request, User $user): RedirectResponse
    {
        $data = $request->only('username', 'email');
        $password=$request->input('password');
        if($password)
            $data['password'] = bcrypt($password);
        $user->update($data);
        $user->roles()->sync($request->roles);
        return redirect()->route('users.show', $user->id)->with('success', 'Usuario actualizado correctamente');
    }

    /**
     * @param User $user
     * @return RedirectResponse
     */
    public function destroy(User $user): RedirectResponse
    {
        $user->delete();
        return back()->with('success', 'Usuario eliminado correctamente');
    }
}
