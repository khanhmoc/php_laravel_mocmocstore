<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\product;
use Illuminate\Http\Request;
use App\Models\translate_product;


class languagecontroller extends Controller
{
    //
    var $langs = ["vi", "en"];
    public function translate($lang = "vi")
    {
        // dd($language);
        if (in_array($lang, $this->langs)) {

            session(['lang' => $lang]);
        }
        return response();
    }
    public function testtt()
    {
        // if (session('language')) {
        //     app()->setlocale(session('language'));
        //     //\App::setLocale(session('language'));
        // } else {
        //     //\App::setLocale('en');
        //     app()->setlocale('EN');
        // }
        // $langnew = translate_product::one(1);
        //dd(\App::getLocale());
        //dd($langnew);
        $pro = product::where('id', 1)->firt();
        // dd($pro->product_name);
        $data = [
            'pro' => $pro
        ];
        return view('frontend.system.dashboard', $data);
    }
}
