<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Course;
use App\Models\Photo;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $courses = Course::with('photo')->orderBy('id', 'desc')->paginate(18);
        return view('admin.courses.index', compact('courses'));
    }

    public function create()
    {
        return view('admin.courses.create');
    }

    public function store(Request $request)
    {
        $rules =[
            'title'    => 'required|min:3|max:150',
            'status'   => 'required|integer|in:0,1',
            'link'     => 'required|url',
            'track_id' => 'required|integer',
        ];

        $this->validate($request,$rules);

        $request['slug'] = strtolower(str_replace(' ', '-', $request->title));

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

            return redirect('/admin/courses')->withStatus('Course Successfully Created');
        }
        else
        {
            return redirect('/admin/courses')->withStatus('Something Wrong, Please Try Again');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Course $course)
    {
        return view('admin.courses.show', compact('course'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Course $course)
    {
        return view('admin.courses.edit', compact('course'));
    }



    public function update(Request $request, Course $course)
    {
        $rules =[
            'title'    => 'required|min:3|max:150',
            'status'   => 'required|integer|in:0,1',
            'link'     => 'required|url',
            'track_id' => 'required|integer',
        ];

        $this->validate($request,$rules);

        //This Takes The data Entered And Store It In Varaiable
        $course->update($request->all() ); 

            
        if($file = $request->file('image'))
        {
            $filename =$file->getClientOriginalName();  //Get name Of Image
            $fileextention =$file->getClientOriginalExtension();  //get Extention of Image
            
            // This Is used To make Name of Image Stored Like (43232_name_.jpg)
            $file_to_store= time() . '_' . explode('.', $filename)[0] . '_.' .$fileextention;

            if($file->move('images/courses', $file_to_store))
            {
                //Because There Are Courses That don't have Any Photo
                if($course->photo)    //then will will update photo
                {  
                    $photo = $course->photo;  //to Get The Image Of The Course 
                    
                    //remove the old photo
                    $filename=$photo->filename;
                    unlink('images/courses/'.$filename);

                    $photo->filename = $file_to_store;
                    $photo->save();
                }else{
                    Photo::create([
                        'filename' =>$file_to_store,
                        'photoable_id' =>$course->id,
                        'photoable_type' =>'App/Models/Course',
                    ]);
                }
            }
            

            return redirect('/admin/courses')->withStatus('Course Successfully Updated');
        }
        else
        {
            return redirect('/admin/courses')->withStatus('Something Wrong, Please Try Again');
        }

    }   

    public function delete(Course $course)
    { 
        if($course->photo)
        {
            $filename=$course->photo->filename;
            unlink('images/courses/'.$filename);
        }
        
    //We Hide This Code Because I have Problem With Saving Filename of Course Photo
        //$course->photo->delete();

        $course->delete();

        return redirect('/admin/courses')->withStatus('Course Successfully Deleted');

    }

}
