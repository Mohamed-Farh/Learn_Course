<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Quiz extends Model
{
    use Notifiable;

    protected $fillable=[
	'title',
	'answer',
	'right_answer',
	'score',
    'course_id',

    ];

    /////////////////////////////////////////////////

    //The Reverse One-To-Many Relationship 
    //Every Course Has Many Quizzes
    public function course(){
       return $this->belongsTo('App\Models\Course');
    }

    //The Origanl One-To-Many Relationship 
    //Every Quiz Has Many Questions
    public function questions(){
       return $this->hasMany('App\Models\Question');
    }      

    //It is Called Reverse Function
    //This Function Related To Many-To-many RelationShip
    //belongsToMany ->Connect Between Two Model
    //because Every User Has Many Courses And Course Is Beening Taking By Many Users
    //belongsToMany('Path' )
    public function users(){
        return $this->belongsToMany('App\Models\User');
    }           
}
