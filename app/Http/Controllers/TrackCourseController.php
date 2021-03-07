<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Track;
class TrackCourseController extends Controller
{
    public function index($name)
    {
        $track=  Track::where('name', $name)->first();
        
        $courses = $track->courses;
         
        return view('includes.sitepages.all_tracks',compact('courses', 'track' ));
    } 
}
