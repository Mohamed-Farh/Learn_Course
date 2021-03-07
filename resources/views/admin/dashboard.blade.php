@extends('layouts.app')

@section('content')
    @include('layouts.headers.cards')
    
<?php
    $users=App\User::orderBy('id', 'desc')->limit(5)->get();
    $tracks=App\Models\Track::orderBy('id', 'desc')->limit(5)->get();
    $courses=App\Models\Course::orderBy('id', 'desc')->limit(5)->get();
    $quizzes=App\Models\Quiz::orderBy('id', 'desc')->limit(5)->get();
?>    
    <div class="container-fluid mt--7">
        <div class="row">
            
            <!------------- Tracks In Dashboard -------------------->
            <div class="col-xl-6 mb-5 mb-xl-0">
                <div class="card bg-gradient-default dashboard_track">
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="mb-0">Latest Tracks</h3>
                            </div>
                            <div class="col text-right">
                                <a href="/admin/tracks" class="btn btn-sm btn-primary">See all</a>
                            </div>
                        </div>
                    </div>                   
                    @if(count($tracks))  
                        <div class="table-responsive">
                            <table class="table align-items-center table-flush">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">{{ __('Name') }}</th>
                                        <th scope="col">{{ __('Courses') }}</th>
                                        <th scope="col">{{ __('Creation Date') }}</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>

                                     @foreach ($tracks as $track)
                                        <tr>
                                            <td> <a href="{{ route('tracks.show', $track) }}"> {{ $track->name }} </a> </td>
                                            <td>{{ count($track->courses) }} Courses</td>
                                            <td>{{ $track->created_at->diffForHumans() }}</td>
                                            <td class="text-right">
                                                <div class="dropdown">
                                                    <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                                                <form action="{{ route('tracks.destroy', $track) }}" method="post">
                                                                    @csrf
                                                                    @method('delete')      
                                                                    <a class="dropdown-item" href="{{ route('tracks.edit', $track) }}">{{ __('Edit') }}</a>
                                                                    <button type="button" class="dropdown-item" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                                                                        {{ __('Delete') }}
                                                                    </button>
                                                                </form>                                                             
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach

                                 </tbody>
                            </table>
                        </div>
                        
                    @else
                        <p class="lead text-center"> No Tracks Was Found </p>  
                    @endif 
                </div>
            </div>
           

            <!------------- Courses In Dashboard -------------------->
            <div class="col-xl-6">
                <div class="card bg-gradient-default dashboard_course">
                   
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="mb-0">Latest Courses</h3>
                            </div>
                            <div class="col text-right">
                                <a href="/admin/courses" class="btn btn-sm btn-primary">See all</a>
                            </div>
                        </div>
                    </div>                
                   
                    @if(count($tracks))  
                        <div class="table-responsive">
                            <table class="table align-items-center table-flush">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">{{ __('Name') }}</th>
                                        <th scope="col">{{ __('Videos') }}</th>
                                        <th scope="col">{{ __('Creation Date') }}</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>

                                        @foreach ($courses as $course)
                                        <tr>
                                            <td> <a href="{{ route('courses.show', $course) }}"> {{ $course->title }} </a> </td>
                                            <td>{{ count($course->videos) }} Videos</td>
                                            <td>{{ $course->created_at->diffForHumans() }}</td>
                                            <td class="text-right">
                                                <div class="dropdown">
                                                    <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                                                <form action="{{ route('courses.destroy', $course) }}" method="post">
                                                                    @csrf
                                                                    @method('delete')      
                                                                    <a class="dropdown-item" href="{{ route('courses.edit', $course) }}">{{ __('Edit') }}</a>
                                                                    <button type="button" class="dropdown-item" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                                                                        {{ __('Delete') }}
                                                                    </button>
                                                                </form>                                                             
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                      @endforeach

                                    </tbody>
                            </table>
                        </div>
                        
                    @else
                        <p class="lead text-center"> No Tracks Was Found </p>  
                    @endif
                </div>
            </div>
        </div>
       

        <div class="row mt-5">
            

            <!------------- Users In Dashboard -------------------->
            <div class="col-xl-6 mb-5 mb-xl-0">
                <div class="card bg-gradient-default dashboard_track">
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="mb-0">Latest Users</h3>
                            </div>
                            <div class="col text-right">
                                <a href="/admin/users" class="btn btn-sm btn-primary">See all</a>
                            </div>
                        </div>
                    </div>                   
                    @if(count($users))  
                        <div class="table-responsive">
                            <table class="table align-items-center table-flush">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">{{ __('Name') }}</th>
                                        <th scope="col">{{ __('E_Mail') }}</th>
                                        <th scope="col">{{ __('Creation Date') }}</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>

                                     @foreach ($users as $user)
                                        <tr>
                                            <td>{{ $user->name }}</td>
                                            <td>{{ $user->email }}</td>
                                            <td>{{ $user->created_at->diffForHumans() }}</td>
                                            <td class="text-right">
                                                <div class="dropdown">
                                                    <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                                                <form action="{{ route('users.destroy', $user) }}" method="post">
                                                                    @csrf
                                                                    @method('delete')      
                                                                    <a class="dropdown-item" href="{{ route('users.edit', $user) }}">{{ __('Edit') }}</a>
                                                                    <button type="button" class="dropdown-item" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                                                                        {{ __('Delete') }}
                                                                    </button>
                                                                </form>                                                             
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach

                                 </tbody>
                            </table>
                        </div>
                        
                    @else
                        <p class="lead text-center"> No Tracks Was Found </p>  
                    @endif 
                </div>
            </div>
           

            <!------------- Quizzes In Dashboard -------------------->
            <div class="col-xl-6">
                <div class="card bg-gradient-default dashboard_course">
                   
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="mb-0">Latest Quizzes</h3>
                            </div>
                            <div class="col text-right">
                                <a href="/admin/quizzes" class="btn btn-sm btn-primary">See all</a>
                            </div>
                        </div>
                    </div>                
                   
                    @if(count($quizzes))  
                        <div class="table-responsive">
                            <table class="table align-items-center table-flush">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">{{ __('Name') }}</th>
                                        <th scope="col">{{ __('Videos') }}</th>
                                        <th scope="col">{{ __('Creation Date') }}</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>

                                        @foreach ($quizzes as $quiz)
                                        <tr>
                                            <td> <a href="{{ route('quizzes.show', $quiz) }}"> {{ $quiz->title }} </a> </td>
                                            <td>{{ \Str::limit($quiz->course->title, 20) }} Videos</td>
                                            <td>{{ $quiz->created_at->diffForHumans() }}</td>
                                            <td class="text-right">
                                                <div class="dropdown">
                                                    <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                                                <form action="{{ route('quizzes.destroy', $quiz) }}" method="post">
                                                                    @csrf
                                                                    @method('delete')      
                                                                    <a class="dropdown-item" href="{{ route('quizzes.edit', $quiz) }}">{{ __('Edit') }}</a>
                                                                    <button type="button" class="dropdown-item" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                                                                        {{ __('Delete') }}
                                                                    </button>
                                                                </form>                                                             
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                      @endforeach

                                    </tbody>
                            </table>
                        </div>
                        
                    @else
                        <p class="lead text-center"> No Tracks Was Found </p>  
                    @endif
                </div>
            </div>
        </div>

        @include('layouts.footers.auth')
    </div>
@endsection

@push('js')
    <script src="{{ asset('argon') }}/vendor/chart.js/dist/Chart.min.js"></script>
    <script src="{{ asset('argon') }}/vendor/chart.js/dist/Chart.extension.js"></script>
@endpush