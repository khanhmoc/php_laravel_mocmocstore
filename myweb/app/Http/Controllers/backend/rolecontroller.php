<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\chucnang;
use App\Models\roles;
use App\Models\users;
use Illuminate\Http\Request;

class rolecontroller extends Controller
{
    var $route = 'role';
    var $pagename = 'Phân quyền';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {


        $list = users::where('status', '!=', '2')
            ->paginate(10);
        // dd($list);
        // ->get();
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'list' => $list
        ];
        return view('backend.role.list', $data);
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $role = roles::where('status', '1')->where('parent_id', '0')->get();
        // dd($role);
        $item = users::where('id', $id)->get();
        // $checked = chucnang::where('id_user', $id)->get();
        // $loadcon = roles::where('parent_id', '0')->where('status', '1')->where('access', '0')->get();
        if (!$item)
            return redirect()->route('user.index')->with(['msg' => 'ko tim thay user', 'status' => 'danger']);
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'action' => route('user.update', $id),
            'method' => 'PUT',
            'item' => $item,
            'chucnang' => $role,
            // 'checked' => $checked,
            // 'loadcon' => $loadcon


        ];
        return view('backend.role.form', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
