<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Question;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $questions = Question::orderBy('id', 'desc')->paginate(15);
        return view('admin.questions.index', compact('questions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.questions.create');
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
            'title'        => 'required|min:10|max:1000',
            'answer'      => 'required|min:5|max:1000',
            'right_answer' => 'required|min:2|max:100',
            'score'        => 'required|integer|in:5,10,15,20,25,30',
            'quiz_id'      => 'required|integer',
        ];

        $this->validate($request,$rules);

        //This Takes The data Entered And Store It In Varaiable
        $question=Question::create($request->all()); 

        if($question)
        {
            return redirect('/admin/questions')->withStatus('Question Successfully Created');
        }
        else
        {
            return redirect('/admin/questions/create')->withStatus('Something Wrong, Please Try Again');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Question $question)
    {
        return view('admin.questions.show', compact('question'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Question $question)
    {
        return view('admin.questions.edit', compact('question'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Question $question)
    {
        $rules =[
            'title'        => 'required|min:10|max:1000',
            'answer'      => 'required|min:5|max:1000',
            'right_answer' => 'required|min:2|max:100',
            'score'        => 'required|integer|in:5,10,15,20,25,30',
            'quiz_id'      => 'required|integer',
        ];

        $this->validate($request,$rules);

        
        //This Takes The data Entered And Store It In Varaiable      
        if($question->update($request->all()) )
        {
            return redirect('/admin/questions')->withStatus('Question Successfully Updated');
        }
        else
        {
            return redirect('/admin/questions/'. $question->id .'edit')->withStatus('Something Wrong, Please Try Again');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        $question->delete();

        return redirect('/admin/questions')->withStatus('Question Successfully Deleted');
    }
}
