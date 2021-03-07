<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Track;

class TrackCourseController extends Controller
{

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Track $track)
    {
        return view('admin.tracks.createcourse', compact('track'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules =[
            'title'    => 'required|min:3|max:150',
            'status'   => 'required|integer|in:0,1',
            'link'     => 'required|url',
            'track_id' => 'required|integer',
        ];

        $this->validate($request,$rules);

        //This Takes The data Entered And Store It In Varaiable
        $course = Course::create($request->all() ); 

        if($course)
        {
            //If Request Contain Image
            
            if($file = $request->file('image'))
            {
                $filename =$file->getClientOriginalName();  //Get name Of Image
                $fileextention =$file->getClientOriginalExtension();  //get Extention of Image
                // This Is used To make Name of Image Stored Like (43232_name_.jpg)
                $file_to_store=time().'_'.explode('.',$filename)[0].'_.'.$fileextention;

                if($file->move('images/courses', $file_to_store))
                {
                    Photo::create([
                        'filename' =>$file_to_store,
                        'photoable_id' =>$course->id,
                        'photoable_type' =>'App/Models/Course',
                    ]);
                }
            }
            return redirect()->back()->withStatus('Course Successfully Created');
        }
        else
        {
            return redirect('/admin/tracks/'.$track->id.'/courses/create')->withStatus('Something Wrong, Please Try Again');
        }
    }
}
