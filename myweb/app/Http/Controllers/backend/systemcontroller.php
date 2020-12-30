<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class systemcontroller extends Controller
{
    //
    var $route = 'system';
    var $pagename = 'Trang chủ';


    public function index()
    {
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
        ];
        return view('backend.system.dashboard', $data);
    }
    var $langs = ["vi", "en"];
    public function translate($lang = "vi")
    {
        // dd($language);
        if (in_array($lang, $this->langs)) {

            session(['lang' => $lang]);
        }
        return back();
    }
}
