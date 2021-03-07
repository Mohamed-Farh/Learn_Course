@extends('layouts.app', ['title' => __('Quiz Management')])

@section('content')
    @include('admin.users.partials.header', ['title' => __('Add Question')])   

    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-12 order-xl-1">
                <div class="card bg-secondary shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">{{ __('Quiz Name : ') }} {{ $quiz->title }}</h3>
                            </div>
                            <div class="col-4 text-right">
                                <a href="{{ route('quizzes.show', $quiz) }}" class="btn mt-4 btn-primary">{{ __(' Cancel ') }}</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('questions.store') }}" autocomplete="off">
                            
                            @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                            @endif
                            

                            @csrf
                            <h6 class="heading-small text-muted mb-4">{{ __('Question information') }}</h6>
                            <div class="pl-lg-4">
                                <div class="form-group{{ $errors->has('title') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-title">{{ __('Question Title') }}</label>
                                    <input type="text" name="title" id="input-title" class="form-control form-control-alternative{{ $errors->has('title') ? ' is-invalid' : '' }}" placeholder="{{ __('Question Title') }}" value="{{ old('title') }}" required autofocus>

                                    @if ($errors->has('title'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('title') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('answer') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-answer">{{ __('Answers') }}</label>
                                    <textarea name="answer" id="input-answer" class="form-control form-control-alternative{{ $errors->has('answer') ? ' is-invalid' : '' }}" placeholder="{{ __('Question Answers') }}" required autofocus >{{ old('answer') }}</textarea>

                                    @if ($errors->has('answer'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('answer') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('right_answer') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-right_answer">{{ __(' Right Answers ') }}</label>
                                    <input type="text" name="right_answer" id="input-right_answer" class="form-control form-control-alternative{{ $errors->has('right_answer') ? ' is-invalid' : '' }}" placeholder="{{ __('Question Title') }}" value="{{ old('right_answer') }}" required autofocus>

                                    @if ($errors->has('right_answer'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('right_answer') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('score') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-score">{{ __('Question Score') }}</label>
                                    <select name="score" class="form-control" required>
                                        <option value="5" > 5  </option>
                                        <option value="10"> 10 </option>
                                        <option value="15"> 15 </option>
                                        <option value="20"> 20 </option>
                                        <option value="25"> 25 </option>
                                        <option value="30"> 30 </option>
                                    </select>

                                    @if ($errors->has('score'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('score') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                
                                <div class="form-group{{ $errors->has('quiz_id') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-quiz_id">{{ __('Quiz') }}</label>
                                    <select name="quiz_id" required class="form-control">
                                        @foreach(\App\Models\Quiz::orderBy('id', 'desc')->get() as $quiz)
                                        <option value="{{ $quiz->id }}"> {{ \Str::limit($quiz->title, 30)}} </option>
                                        @endforeach
                                    </select>
                                    @if ($errors->has('quiz_id'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('quiz_id') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                

                                <div class="text-center">
                                    <button type="submit" class="btn btn-success mt-4">{{ __('Save') }}</button>
                                </div>
                            </div>
                        </form>
                    

                    </div>
                </div>
            </div>
        </div>
        
        @include('layouts.footers.auth')
    </div>
@endsection