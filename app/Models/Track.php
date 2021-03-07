<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Track extends Model
{
    use Notifiable;

 	//We Choose This Variables From The The Migration File, And This Values Is The Data That This Track Will Take When I Inserted It In The Database
    protected $fillable =[
	      
          'name',
	];

    //It is Called Reverse Function
    //This Function Related To Many-To-many RelationShip
    //belongsToMany ->because Every User Has Many Tracks And Track Is Beening Taking By Many Users
    //belongsToMany('Path' )
    public function users(){
        return $this->belongsToMany('App\User');
    }

    //The orignal One-To-Many Relationship 
    //Every Track Has Many Courses
    public function courses(){
       return $this->hasMany('App\Models\Course');
    }

    //The orignal One-To-Many Relationship 
    //Every Track Has Many Quizzes
    public function Quizzes(){
       return $this->hasMany('App\Models\Quiz');
    }         

}
