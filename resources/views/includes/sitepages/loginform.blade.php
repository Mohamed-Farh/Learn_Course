<!DOCTYPE html>

    <html lang="zxx" class="no-js">
    
    <head>
        
        @include('layouts.partials.head')

        <link rel="stylesheet" href="{{asset('app-assets/css/login_css.css')}}">
    </head>
    

    <body>
<!-- start banner Area -->
<section class="banner-area relative" id="home">
    <div class="overlay overlay-bg"></div>  
    <div class="container">
        <div class="row fullscreen d-flex align-items-center justify-content-between">
            <div class="banner-content col-lg-9 col-md-12">
 

                <div class="row">
                    <div class="col-md-6 mx-auto p-0">
                        <div class="card" style="margin-bottom:85px;">
                            <div class="login-box">
                                <div class="login-snip"> <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                                   

                                    <div class="login-space">
                                        <div class="login">
                                            <form role="form" method="POST" action="{{ route('login') }}">
                                                @csrf
                                                </br></br></br></br>
                                                <div class="group"> 
                                                    <label for="user" class="label">Username</label> 
                                                    <input id="user" type="email" name="email" value="{{ old('email') }}" required autofocus class="input" placeholder="Enter your username" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"> 
                                                </div>
                                                    @if ($errors->has('email'))
                                                        <span class="invalid-feedback" style="display: block;" role="alert">
                                                            <strong>{{ $errors->first('email') }}</strong>
                                                        </span>
                                                    @endif

                                                <div class="group"> 
                                                    <label for="pass" class="label">Password</label> 
                                                    <input id="pass" type="password" class="input" data-type="password" placeholder="Enter your password"  class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password"   required> 
                                                </div>
                                                     @if ($errors->has('password'))
                                                        <span class="invalid-feedback" style="display: block;" role="alert">
                                                            <strong>{{ $errors->first('password') }}</strong>
                                                        </span>
                                                    @endif


                                                <div class="group"> 
                                                    <input id="check" class="check"   name="remember" id="customCheckLogin" type="checkbox" {{ old('remember') ? 'checked' : '' }}> 
                                                    <label for="check"><span class="icon"></span> Keep me Signed in</label> 
                                                </div>

                                                <div class="group"> 
                                                    <input type="submit" class="button" value="Sign In"> 
                                                </div>
                                                
                                                <div class="hr"></div>
                                                
                                                <div class="foot"> <a href="#">Forgot Password?</a> </div>
                                            </form>                                
                                         </div>


                                        <div class="sign-up-form">

                                            <form role="form" method="POST" action="{{ route('register') }}">
                                                @csrf

                                                <div class="group"> 
                                                    <label for="user" class="label">Username</label> 
                                                    <input id="user" class="input" placeholder="Create your Username" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" type="text" name="name" value="{{ old('name') }}" required autofocus> 
                                                </div>
                                                    @if ($errors->has('name'))
                                                        <span class="invalid-feedback" style="display: block;" role="alert">
                                                            <strong>{{ $errors->first('name') }}</strong>
                                                        </span>
                                                    @endif
                                                

                                                <div class="group"> 
                                                    <label for="pass" class="label">Password</label> 
                                                    <input id="pass" type="password" class="input" data-type="password" placeholder="Create your password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required> 
                                                </div>
                                                    @if ($errors->has('password'))
                                                        <span class="invalid-feedback" style="display: block;" role="alert">
                                                            <strong>{{ $errors->first('password') }}</strong>
                                                        </span>
                                                    @endif    
                                                

                                               

                                                <div class="group"> 
                                                    <label for="pass" class="label">Repeat Password</label> 
                                                    <input id="pass" type="password" class="input" data-type="password" placeholder="Repeat your password"  class="form-control" name="password_confirmation" required> 
                                                </div>
                                                <div class="text-muted font-italic">
                                                    <small>{{ __('password strength') }}: <span class="text-success font-weight-700">{{ __('strong') }}strong</span></small>
                                                </div>
                                                

                                                <div class="group"> 
                                                    <label for="pass" class="label">Email Address</label> 
                                                    <input id="pass" class="input" placeholder="Enter your email address" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"  type="email" name="email" value="{{ old('email') }}" required> 
                                                </div>
                                                    @if ($errors->has('email'))
                                                        <span class="invalid-feedback" style="display: block;" role="alert">
                                                            <strong>{{ $errors->first('email') }}</strong>
                                                        </span>
                                                    @endif
                                              
                                                <div class="row my-4">
                                                    <div class="col-12">
                                                        <div class="custom-control custom-control-alternative custom-checkbox">
                                                            <input class="custom-control-input" id="customCheckRegister" type="checkbox">
                                                            <label class="custom-control-label" for="customCheckRegister">
                                                                <span class="text-muted">{{ __('I agree with the') }} <a href="#!">{{ __('Privacy Policy') }}</a></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="group"> 
                                                    <button type="submit" class="button" > Sign Up </button>
                                                </div>
                                                
                                                <div class="hr"></div>
                                            </form>  
                                                                            
                                            <div class="foot"> 
                                               <label for="tab-1">Already Member?</label> 
                                             </div>                               
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        
            

            </div>                                      
        </div>
    </div>                  
</section>
<!-- End banner Area -->  



        @include('layouts.partials.footer-scripts')
    
    </body>


</html>




