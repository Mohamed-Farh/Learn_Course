<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Models\Track;
use App\Models\Course;
use App\Models\Quiz;

use Illuminate\Support\Facades\Auth;



class CourseController extends Controller
{

	public function index($slug)
	{
		$course = Course::where('slug', $slug)->first();
		return view('includes.sitepages.course-details', compact('course'));
	}

//----------------- Show All Courses In The Website  ------------------

    public function login_register()
    {

    	return view('includes.sitepages.loginform');
    }


//----------------- Show All Courses In The Website  ------------------

    public function showcourses()
    {

    	return view('includes.sitepages.courses');
    }


//----------------- Show only One Course In The Website  ------------------

    public function show_one_course()
    {

    	return view('includes.sitepages.course-details');

    }    

//----------------- Show only One Course In The Website  ------------------

    public function show_course_quiz()
    {

        return view('includes.sitepages.course-quiz');
    }  


//----------------- Search For any Course In The Website  ------------------

    public function search_course(Request $request)
    {
        $q = $request->q;   //name Of Input In search Form
       
        $courses = Course::where('title', 'LIKE', '%'.$q.'%')->get();
         
        return view('includes.sitepages.search',compact('courses'));
    }           

//----------------- Enroll For any Course In The Website  ------------------
    
    public function enroll($slug)
    {
        
        $course = Course::where('slug', $slug)->first();
        
        $user = Auth::user();

        $user->courses()->attach([$course->id]);

        return redirect('/courses/'.$slug.'')->withStatus("You Have Enrolled In ".$course->title);
    }    
}
