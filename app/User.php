<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'profileimage',
        'admin',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    //This Function Related To One-To-One RelationShip
    //morphOne ->because Every User Have One Photo
    //morphOne('Path' , 'Name Of Model')
    public function photo(){
        return $this->hasOne('App\Models\Photo', 'photoable_id');
    }

    //It is Called orignal Function
    //This Function Related To Many-To-many RelationShip
    //belongsToMany ->Connect Between Two Model
    //because Every User Has Many Courses And Course Is Beening Taking By Many Users
    //belongsToMany('Path' )
    public function Courses(){
        return $this->belongsToMany('App\Models\Course');
    }  

    //It is Called orignal Function
    //This Function Related To Many-To-many RelationShip
    //belongsToMany ->because Every User Has Many Tracks And Track Is Beening Taking By Many Users
    //belongsToMany('Path' )
    public function Tracks(){
        return $this->belongsToMany('App\Models\Track');
    } 

    /////////////////////////////////////

    //It is Called orignal Function
    //This Function Related To Many-To-many RelationShip
    //belongsToMany ->Connect Between Two Model
    //because Every User Has Many quizes And Quiz Is Beening Taking By Many Users
    //belongsToMany('Path' )
    public function quizzes(){
        return $this->belongsToMany('App\Models\Quiz');
    }
            
}
