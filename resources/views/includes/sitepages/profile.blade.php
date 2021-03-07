<!DOCTYPE html>

    <html lang="zxx" class="no-js">
    
    <head>
        
        @include('layouts.partials.head')
        <link rel="stylesheet" href="{{asset('app-assets/css/editprofile.css')}}">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
    

    <body>
        
        @include('layouts.partials.nav')
              
            <!-- start banner Area -->
            <section class="banner-area relative about-banner" id="home">   
                <div class="overlay overlay-bg"></div>
                <div class="container">             
                    <div class="row d-flex align-items-center justify-content-center">
                        <div class="about-content col-lg-12">
                            <h1 class="text-white">
                                Edit Profile Information     
                            </h1>   
                            <p class="text-white link-nav"><a href="index.blade.php">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="courses.blade.php"> Profile </a></p>
                        </div>  
                    </div>
                </div>
            </section>
            <!-- End banner Area -->

<form id="user_info_form" method="POST" action="/updateprofile" enctype="multipart/form-data">
   @csrf
                <div class="container rounded bg-white mt-5 mb-5">
                    <div class="row">
                        
                        <div class="col-md-6 border-right">
                           <p id="message"></p>
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5 submitform">
                                <div class="uploaded_image">
                                    @if($user->photo)   
                                        <img class="rounded-circle mt-5" src="/images/courses/{{ $user->photo->filename}}" alt="" style="border-radius:50%;">
                                    @else
                                        <img class="rounded-circle mt-5" src="{{asset('app-assets/img/blog/user-info.png')}}" alt="" style="    border-radius:50%;">
                                    @endif
                                </div>
                                    
                                    
                                    <div class="imageform">
            
                                            
                                            <input id="image_file" type="file" name="image" >
                                            
                                            <input id="upload_btn" type="submit" class="btn btn-primary" href=""><i class="fa fa-camera"></i> New Photo
                                    </div>
                                
                                </br>
                                <span class="font-weight-bold">{{ $user->name}}</span> </br>
                                <span class="text-black-50">{{ $user->email}}</span>
                                     
                            </div>
                        </div>
                        

                        <div class="col-md-6 border-right">
                            <div class="p-3 py-5">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4 class="text-right">Profile Settings</h4>
                                </div>
                                
                                <div class="row mt-2">
                                    <div class="col-md-8">
                                        <label class="labels">Name</label>
                                        <input type="text" class="form-control" placeholder="Enter Your Name" value="{{ $user->name }}" name="name">
                                    </div>
                                </div>
                               
                                <div class="row mt-3">
                                    <div class="col-md-8">
                                        <label class="labels">Email</label>
                                        <input type="text" class="form-control" placeholder="enter email" value="{{ $user->email}}" name="email">
                                    </div>
                                </div>
                               
                                <div class="row mt-3">
                                    <div class="col-md-8">
                                        <label class="labels">Password</label>
                                        <input type="password" class="form-control" placeholder="password" value="" name="password">
                                    </div>
                                </div>
                               
                                <div class="mt-5 text-center">
                                    <input class="btn btn-primary profile-button" type="submit" name="Save Profile" style="width:30%">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>



        <!-- start footer Area -->      
        @include('layouts.partials.footer')
        
        @include('layouts.partials.footer-scripts')
    
    </body>


</html>




