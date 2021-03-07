<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    use Notifiable;


    protected $table = 'photoable';

    //We Choose This Variables From The The Migration File, And This Values Is The Data That This Photo Will Take When I Inserted It In The Database
    protected $fillable =[
    	'filename',
        'photoable_id',
        'photoable_type',
    	'relation',
    ];


    //This Function Related To One-To-One RelationShip
    public function photoable(){
    	return $this->morphTo('App\Models\Photo');
    } 
}
