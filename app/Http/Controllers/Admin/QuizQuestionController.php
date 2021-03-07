<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Quiz;

class QuizQuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Quiz $quiz)
    {
        return view('admin.quizzes.createquestion', compact('quiz'));

    }


}
