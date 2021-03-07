@extends('layouts.app', ['title' => __('Tracks Management')])

@section('content')
    @include('layouts.headers.cards')

<div class="container-fluid mt--7">
    <div class="row">
        <div class="col">
            <div class="card shadow">
                <div class="card-header border-0">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h3 class="mb-0">{{ $track->name }}</h3>
                        </div>
                        <div class="col-4 text-right">
                            <a href="/admin/tracks/{{ $track->id }}/courses/create" class="btn mt-4 btn-primary">{{ __('New Course') }}</a>
                        </div>
                    </div>
                </div>
                
                @include('includes.errors')
                <div class="col-12">
                        @if (session('status'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                {{ session('status') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        @endif
                </div>


                @if(count($track->courses))  
                    <div class="row">
                        @foreach ($track->courses as $course)    
                        <div class="col-sm-4">    
                            <div class="card" style="width: 18rem;">
                             @if($course->photo) 
                              <img class="card-img-top" src="/images/courses/{{$course->photo->filename}}" alt="Course Photo">
                              @else
                              <img class="card-img-top" src="/images/courses/default.jpg" alt="Course Photo">                              
                              @endif
                              <div class="card-body">
                                <h5 class="card-title">{{ \Str::limit($course->title, 70) }}</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                
                                <form method="GET" action="{{ route('courses.delete', $course) }}">
                                    

                                    <a href="{{ route('courses.edit', $course) }}" class="btn-sm btn btn-success"> Edit </a>
                                    <a href="{{ route('courses.show', $course) }}" class="btn-sm btn btn-info"> Show </a>
                                    <input type="submit" value="Delete" name="deletecourse" class="btn-sm btn btn-danger" confirm('{{ __("Are You Sure You Want To Delete This Course?") }}') ? this.parentElement.submit() : ''"/>

                                    <!-- <a href="{{ route('courses.destroy', $course) }}" class="btn-sm btn btn-danger" confirm('{{ __("Are You Sure You Want To Delete This Course?") }}') ? this.parentElement.submit() : ''"/> Delete</a> -->

                                </form>
                              </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                @else
                <p class="lead text-center"> No courses Was Found </p>  
                
                @endif  
            </div>
        </div>
    </div>
        @include('layouts.footers.auth')
    </div>
@endsection
