@extends('layouts.app', ['title' => __('Quiz Management')])

@section('content')
    @include('layouts.headers.cards')

<div class="container-fluid mt--7">
    <div class="row">
        <div class="col">
            <div class="card shadow">
                <div class="card-header border-0">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h3 class="mb-0">{{ __('Quiz Name : ') }} {{ $quiz->title }}</h3>
                        </div>
                        <div class="col-4 text-right">
                            <a href="/admin/quizzes/{{ $quiz->id }}/questions/create" class="btn btn-lg btn-primary">{{ __('Add Question') }}</a>
                        </div>
                    </div>
                </div>
                
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

                <div class="table-responsive">
                    <table class="table align-items-center table-flush">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">{{ __('Title') }}</th>
                                <th scope="col">{{ __('Answer') }}</th>
                                <th scope="col">{{ __('Right Answer') }}</th>
                                <th scope="col">{{ __('Score') }}</th>
                                <th></th>
                            </tr>
                        </thead>
                       
                        <tbody>
                                @foreach ($quiz->questions as $question)

                                <tr>
                                    <td>{{ \Str::limit($question->title, 30) }}</td>
                                    <td>{{ \Str::limit($question->answer, 20) }}</td>
                                    <td>{{ \Str::limit($question->right_answer, 20) }}</td>
                                    <td>{{ $question->score }}</td>

                                    <td class="text-right">
                                        <div class="dropdown">
                                            <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                                <form action="{{ route('quizzes.destroy', $quiz) }}" method="post">
                                                    @csrf
                                                    @method('delete')      
                                                    <a class="dropdown-item" href="{{ route('questions.edit', $question) }}">{{ __('Edit') }}</a>
                                                    <button type="button" class="dropdown-item" onclick="confirm('{{ __("Are you sure you want to delete this Question?") }}') ? this.parentElement.submit() : ''">
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
            </div>
        </div>
    </div>
        @include('layouts.footers.auth')
    </div>
@endsection
