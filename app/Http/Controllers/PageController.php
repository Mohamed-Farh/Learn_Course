<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{



//----------------- Show about In The Website  ------------------

    public function about()
    {

    	return view('includes.sitepages.about');
    }


//----------------- Show gallery In The Website  ------------------

    public function gallery()
    {

    	return view('includes.sitepages.gallery');
    }


//----------------- Show contact In The Website  ------------------

    public function contact()
    {

    	return view('includes.sitepages.contact');
    }

//----------------- Send E_Mails To Website  ------------------

    public function sendmail(Request $request)
    {

        $name->$request->name;
        $addres->$request->addres;
        $subject->$request->subject;
        $message->$request->message;

    }    

}
