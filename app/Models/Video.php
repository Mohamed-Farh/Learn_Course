<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    use Notifiable;

    protected $fillable =[
	'title',
	'link',
    'course_id',
    ];

    //The Inverse One-To-Many Relationship 
    //Every Course Has Many Videos
    public function course(){
       return $this->belongsTo('App\Models\Course');
    }    

}
