<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyCourseController extends Controller
{
    public function __construct()
    {
    	$this->middleware('auth');
    }


    public function index()
    {
    	$user = auth()->user();

        $tracks= $user->tracks;

    	$user_courses = $user->courses()->paginate(3);

        return view('includes.sitepages.mycourse', compact('user_courses', 'user', 'tracks'));
   
    }
}
