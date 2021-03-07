<?php

use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('homepage');


//-----------------------  LogOut Routes ----------------------------------------
Route::get('/logout', function(){
	if(\Auth::check())
	{ 
		\Auth::logout();
		return redirect('/home');
    }
	else 
	{
	    return redirect('/');
	}    
});

Route::get('/edit-profile', 'ProfileController@index')->name('edit-profile');




//-----------------------  User Routes ----------------------------------------

Auth::routes();


Route::get('/home', 'HomeController@index')->name('home');



Route::group(['middleware' => ['auth', 'Admin'] ], function () {
    
	//-----------------------  Admin Routes -----------------------------------------

    Route::get('admin', function(){
    	return redirect('admin/dashboard');
    });
    Route::get('admin/dashboard', 'Admin\HomeController@index')->name('home');

	Route::resource('admin/admins', 'Admin\AdminController', ['except' => ['show']]);
	
	Route::get('admin/profile', ['as' => 'profile.edit', 'uses' => 'Admin\ProfileController@edit']);
	
	Route::put('admin/profile', ['as' => 'profile.update', 'uses' => 'Admin\ProfileController@update']);
	
	Route::put('admin/profile/password', ['as' => 'profile.password', 'uses' => 'Admin\ProfileController@password']);

	//-----------------------  User Routes -----------------------------------------

	Route::resource('admin/users', 'Admin\UserController', ['except' => ['show']]);

	//-------------------  Tracks Routes -------------------------------------

	Route::resource('admin/tracks', 'Admin\TrackController');

	Route::resource('admin/tracks.courses', 'Admin\TrackCourseController');

	//------------------  Courses Routes --------------------------------------

	Route::resource('admin/courses', 'Admin\CourseController');	
	
	Route::get('admin/courses/delete/{course}', ['as' => 'courses.delete', 'uses' => 'Admin\CourseController@delete']);

	Route::resource('admin/courses.videos', 'Admin\CourseVideoController');

	Route::resource('admin/courses.quizzes', 'Admin\CourseQuizController');

	//------------------  Videos Routes -------------------------------

	Route::resource('admin/videos', 'Admin\VideoController');		

	//------------------  Quizzes Routes -------------------------------

	Route::resource('admin/quizzes', 'Admin\QuizController');

	Route::resource('admin/quizzes.questions', 'Admin\QuizQuestionController');		


	//------------------  Questions Routes -------------------------------

	Route::resource('admin/questions', 'Admin\QuestionController');

 });   


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
|This Routes Related To Front 
*/
	Route::get('/login_register', 'CourseController@login_register');


	
	Route::get('/courses', 'CourseController@showcourses')->name('courses');

	

	Route::get('/courses/{slug}', 'CourseController@index');



	Route::get('/search', 'CourseController@search_course');


	Route::get('/tracks/{name}', 'TrackCourseController@index');


	Route::get('/mycourse', 'MyCourseController@index');


	//This Route Related To Enroll Botton
	Route::get('/course/{slug}', 'CourseController@enroll');

    
    Route::post('/updateprofile', 'ProfileController@update');


    Route::get('/about', 'PageController@about');

    Route::get('/gallery', 'PageController@gallery');

    Route::get('/contact', 'PageController@contact');

    Route::get('/contact', 'PageController@sendmail');

