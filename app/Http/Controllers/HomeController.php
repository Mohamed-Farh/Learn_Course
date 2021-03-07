<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Models\Track;
use App\Models\Course;
use App\Models\Quiz;

class HomeController extends Controller
{
    // public function __construct()
    // {
    // 	$this->middleware('auth');
    // }

    public function index()
    {
    	

    	return view('home');
   
    }


}
