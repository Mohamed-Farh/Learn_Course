<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use Notifiable;

	//We Choose This Variables From The The Migration File, And This Values Is The Data That This Course Will Take When I Inserted It In The Database
    protected $fillable =[
    	'title',
        'description',
        'slug',
        'price',
        'lang',
    	'level',
    	'status',
    	'link',
        'track_id',
    ];

    //This Function Related To One-To-One RelationShip
    //morphOne ->because Every Course Have One Photo
    //morphOne('Path' , 'Name Of Model')
    public function photo(){
        return $this->hasOne('App\Models\Photo','photoable_id');
    }

    //It is Called Inverse Function
    //This Function Related To Many-To-many RelationShip
    //belongsToMany ->Connect Between Two Model
    //because Every User Has Many Courses And Course Is Beening Taking By Many Users
    //belongsToMany('Path' )
    public function users(){
        return $this->belongsToMany('App\User');
    }
    /////////////////////////////////////////////////

    //The Orignal One-To-Many Relationship 
    //Every Course Has Many Quizzes
    public function quizzes(){
       return $this->hasMany('App\Models\Quiz');
    }

    //The Inverse One-To-Many Relationship 
    //Every Track Has Many Courses
    public function track(){
       return $this->belongsTo('App\Models\Track');
    }

    //The Orignal One-To-Many Relationship 
    //Every Course Has Many Videos
    public function videos(){
       return $this->hasMany('App\Models\Video');
    }

}
