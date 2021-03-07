<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function __construct()
    {
    	$this->middleware('auth');
    }


    public function index()
    {
    	$user = auth()->user();

        return view('includes.sitepages.profile', compact('user'));
   
    }


    public function update(Request $request)
    {
    	$user =auth()->user();
        die($request->file('image'));
    	if($request->file('image'))
    	{
            die('photo');
    		$photoable_type='APP\User';
        	$photoable_id=$user->id; //To Get ID OF Cureent Auth User 


    		$file_to_store=time().'_'.$user->name.'_'.'.'.$image->getClientOriginalExtension();

    		//This Will The Of The File I Will Store
    		if( $user->photo->delete()){
	    		
	    		if($user->photo()->create(['filename'=>$file_to_store,'photoable_id'=>$photoable_id,'photoable_type'=>$photoable_type])){

	    			//Path That Image Will Stored In It 
	    			$image->move('images/users', $file_to_store);
	    		}
    		}

            return redirect('/edit-profile')->withStatus("Your Profile Image Successfully Uploaded");
    	}

		else{

       $rules=[
            'name' => 'required|max:255',

            'email' => 'required|email|max:255|unique:users,id,',

            'password'=>'nullable', 'confirmed', 'min:6',
        ];

        $this->validate($request, $rules);

        if($request->password == null){

        	if($user->update(['name'=>$request->name, 'email'=>$request->email])){

        	return redirect('/edit-profile')->withStatus(" profile Has Been Updated Successfully");
    		
    		// return response()->json([
    		// 	'message'=>'Your Profile Profile Successfully Uploaded',
    		// ]);        		
        	}
        }else{
        	$password = password_hash($request->password, PASSWORD_DEFAULT);
        	
        	if($user->update(['name'=>$request->name, 'email'=>$request->email, 'password'=>$password])){

        		return redirect('/edit-profile')->withStatus(" profile Has Been Updated Successfully");

      //   		return response()->json([
    		// 		'message'=>'Your Profile Profile Successfully Uploaded',
    		// ]);  
        	}
        }
	}

}


}