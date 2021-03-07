<?php

use Illuminate\Database\Seeder;

use App\Models\Track;
use App\Models\Course;
use App\Models\Quiz;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call([UsersTableSeeder::class]);

        //This To Run Data That I Have Created In UserFactory Page
        $users =factory('App\User', 10)->create();
        $tracks=factory('App\Models\Track', 10)->create();

            //We Made Every User Have Two Tracks
            foreach ($users as $user) 
            {
                $tracks_ids=[];
                $tracks_ids[]= Track::all()->random()->id;
                $tracks_ids[]= Track::all()->random()->id;

                $user->tracks()->sync( $tracks_ids );
            }

        $courses=factory('App\Models\Course',   50)->create();

            //We Made Every User Have Two Tracks
            foreach ($users as $user) 
            {
                $courses_ids=[];

                $courses_ids[]= Course::all()->random()->id;
                $courses_ids[]= Course::all()->random()->id;
                $courses_ids[]= Course::all()->random()->id;

                $user->courses()->sync( $courses_ids );
            }

        factory('App\Models\Video',   100)->create();
        

        $quizzes=factory('App\Models\Quiz',    100)->create();

            //We Made Every User Have Two Tracks
            foreach ($users as $user) 
            {
                $quizzes_ids=[];
                
                $quizzes_ids[]= Quiz::all()->random()->id;
                $quizzes_ids[]= Quiz::all()->random()->id;
                $quizzes_ids[]= Quiz::all()->random()->id;

                $user->quizzes()->sync( $quizzes_ids );
            }        
        factory('App\Models\Question',200)->create();
        factory('App\Models\Photo',    50)->create();

    }
}
