<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Quiz;

class QuizController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $quizzes = Quiz::orderBy('id', 'desc')->paginate(20);

        return view('admin.quizzes.index', compact('quizzes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.quizzes.create');
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
            'title'     => 'required|min:10|max:100',
            'course_id' => 'required|integer',
        ];

        $this->validate($request,$rules);

        //This Takes The data Entered And Store It In Varaiable
        $quiz = Quiz::create($request->all() ); 

        if($quiz)
        {
            return redirect('/admin/quizzes')->withStatus('Quiz Successfully Created');
        }
        else
        {
            return redirect('/admin/quizzes')->withStatus('Something Wrong, Please Try Again');
        }
    }


    public function show(Quiz $quiz)
    {
        return view('admin.quizzes.show', compact('quiz'));
    }


    public function edit(Quiz $quiz)
    {
        return view('admin.quizzes.edit', compact('quiz'));
        
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Quiz $quiz)
    {
        $rules =[
            'title'     => 'required|min:10|max:100',
            'course_id' => 'required|integer',
        ];

        $this->validate($request,$rules);


        if($quiz->update($request->all()))
        {
            return redirect('/admin/quizzes')->withStatus('Quiz Successfully Updated');
        }
        else
        {
            return redirect('/admin/quizzes/'.$quiz->id.'/edit')->withStatus('Something Wrong, Please Try Again');
        }
    }    

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Quiz $quiz)
    {
        $quiz->delete();

        return redirect('/admin/quizzes')->withStatus('Quiz Successfully Deleted');
    }
}
