<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use Notifiable;

    protected $fillable=[
    	'title',
    	'answer',
    	'right_answer',
    	'score',
        'quiz_id',

    ];

    //////////////////////////////

    //The inverse One-To-Many Relationship 
    //Every Quiz Has Many Questions
    public function quiz(){
       return $this->belongsTo('App\Models\Quiz');
    }    
}
