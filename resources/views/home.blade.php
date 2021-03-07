@extends('layouts.mainlayout')
@section('content')	


<?php  
	$tracks=App\Models\Track::with('courses')->orderBy('id','desc')->limit(10)->get();
		
	$allcourses=App\Models\Course::all();
	
    $user_courses=App\User::findOrFail(1)->courses;  

    $user =auth()->user();

	// if (Auth::check()) {
 //        $user=App\User::all();
 //        $user_courses=$user->courses;
 //    }

	//To Get Other Course i
	$user_courses_ids=App\User::findOrFail(1)->courses()->pluck('id');
	$user_tracks_ids=App\User::findOrFail(1)->tracks()->pluck('id');
	$recommended_courses=App\Models\Course::whereIn('track_id',$user_tracks_ids)->whereNotIn('id',$user_courses_ids)->limit(4)->get();


	
	// $user_courses=$user->courses;	
	// //To Get Other Course i
	// $user_courses_ids= $user->courses()->pluck('id');
	// $user_tracks_ids= $user->tracks()->pluck('id');
	// $recommended_courses=App\Models\Course::whereIn('track_id',$user_tracks_ids)->whereNotIn('id',$user_courses_ids)->limit(4)->get();

// $alltracks=App\Models\Track::all();	
	

?>				
			

			<section class="popular-course-area section-gap">
				<div class="container">
					




         <!-- ----------Recommended Courses For User Who Is Already Login  ---------- -->
				@if( Auth::check() && $user->course)
				{
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Recommended Courses For You</h1>
								<p>There is a moment in the life of any aspiring.</p>
							</div>
						</div>
					</div>						
					<div class="row">
						<div class="active-popular-carusel">
	
							@foreach($user_courses as $course)		
								<div class="single-popular-carusel">
									<div class="thumb-wrap relative">	
									
										<div class="thumb relative">
											<div class="overlay overlay-bg"></div>
											@if($course->photo)	
											<img class="img-fluid" src="/images/courses/{{ $course->photo->filename}}" alt="" style="height: 200px;">
											@else
											<img class="img-fluid" src="/images/courses/default.jpg" alt=""  style="height: 200px;">
											@endif
										</div>
										<div class="meta d-flex justify-content-between">
											<p><span class="lnr lnr-users"></span> {{count($course->users)}} <span class="lnr lnr-bubble"></span>35</p>
											<h4 class="{{ $course->status == '0' ? 'text-success' : 'text-danger'}}">{{$course->status == '0' ? 'FREE' : 'PAID'}}</h4>
									
									   </div>
									</div>
									
									<div class="details">
										<a href="/courses/{{$course->slug}}">
											<h4>{{ \Str::limit($course->title,40)}}</h4>
										</a>
										<a href="#">
											<h4>
												<span style="color: green" ><u>Track :</u></span>
												

													{{ \Str::limit($course->track->name,25)}}

												
											</h4>
										</a>
										<p>
											{{ \Str::limit($course->description,105)}}										
										</p>
									</div>									
								</div>	
						@endforeach
						</div>
					</div>
					}
					@endif



				

         <!-- ----------Get All Courses That Has More Than One Student En  ---------- -->
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Popular Courses we offer</h1>
								<p>There is a moment in the life of any aspiring.</p>
							</div>
						</div>
					</div>						
					<div class="row">
						<div class="active-popular-carusel">
							<?php $x = 0; ?>
							@foreach($allcourses as $course)	
								@if(count($course->users) > 1)	
									<div class="single-popular-carusel">
										<div class="thumb-wrap relative">	
										
											<div class="thumb relative">
												<div class="overlay overlay-bg"></div>
												@if($course->photo)	
												<img class="img-fluid" src="/images/courses/{{ $course->photo->filename}}" alt=""  style="height: 200px;">
												@else
												<img class="img-fluid" src="/images/courses/default.jpg" alt=""  style="height: 200px;">
												@endif
											</div>
											<div class="meta d-flex justify-content-between">
												<p><span class="lnr lnr-users"></span> {{count($course->users)}} <span class="lnr lnr-bubble"></span>35</p>
												<h4 class="{{ $course->status == '0' ? 'text-success' : 'text-danger'}}">{{$course->status == '0' ? 'FREE' : 'PAID'}}</h4>
										
										   </div>
										</div>
										
										<div class="details">
											<a href="/courses/{{$course->slug}}">
												<h4>{{ \Str::limit($course->title,40)}}</h4>
											</a>

												<h4>
													<span style="color: green" ><u>Track :</u></span> {{ \Str::limit($course->track->name,25)}}
												</h4>

											<p>
												{{ \Str::limit($course->description,105)}}										
											</p>
										</div>									
									</div>	
					            @endif
							<?php $x++; ?>
						@endforeach
						</div>
					</div>

					
			

			<!-- Start Show All Tracks Area -->
				   </br></br>
				    <hr style="width:95%;text-align:center;background-color:#f7631b">
					</br>
					<div class="row d-flex justify-content-center alltracks">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">All Tracks </h1>
								<p>Choose Your Tracks, And Start Your Journey To Programming World .</p>
							</div>
						</div>
					</div>						
					<div class="row">
						@foreach($tracks as $track)	
							
							<h3 style="color:blue; ">Last {{ $track->name }} Courses</h3>
						    <div class="active-popular-carusel" style="margin-top:15px;">
								
								@foreach($track->courses()->limit(4)->get() as $course)
								
									<div class="single-popular-carusel">	
										<div class="thumb-wrap relative ">	
											<div class="thumb relative">
												<div class="overlay overlay-bg"></div>
												@if($course->photo)	
												<img class="img-fluid" src="/images/courses/{{ $course->photo->filename}}" alt=""  style="height: 200px;">
												@else
												<img class="img-fluid" src="/images/courses/default.jpg" alt=""  style="height: 200px;">
												@endif
											</div>
											<div class="meta d-flex justify-content-between">
												<p><span class="lnr lnr-users"></span> {{count($course->users)}} <span class="lnr lnr-bubble"></span>35</p>
												<h4 class="{{ $course->status == '0' ? 'text-success' : 'text-danger'}}">{{$course->status == '0' ? 'FREE' : 'PAID'}}</h4>
											</div>									
										</div>
										<div class="details" style="background-color:#f7f7f7;padding:15px ">
											<a href="/courses/{{$course->slug}}">
												<h4>{{ \Str::limit($course->title,40)}}</h4>
											</a>
											<p>
												{{ \Str::limit($course->description,105)}}										
											</p>
										
									    </div>
						             </div>
								
								@endforeach

						    </div>
					    
					    @endforeach
					</div>	
			

				    <!-- Start Show All Tracks Area -->
			    @if( Auth::check() && $user->course)
				{
				    </br></br>
				    <hr style="width:95%;text-align:center;background-color:#f7631b">
					</br>
					<div class="row d-flex justify-content-center alltracks">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10"> Recommended Courses </h1>
								<p> Most Famous Courses Is Recommened For You Depending On Tracks You Enrolled In It.</p>
							</div>
						</div>
					</div>						
					<div class="row">
						<div class="active-popular-carusel" style="margin-top:15px;">
							@foreach($recommended_courses as $course)
							<div class="single-popular-carusel">	
								<div class="thumb-wrap relative">		
									<div class="thumb relative">
										<div class="overlay overlay-bg"></div>
										@if($course->photo)	
										<img class="img-fluid" src="/images/courses/{{ $course->photo->filename}}" alt=""  style="height: 200px;">
										@else
										<img class="img-fluid" src="/images/courses/default.jpg" alt=""  style="height: 200px;">
										@endif
									</div>
									<div class="meta d-flex justify-content-between">
										<p><span class="lnr lnr-users"></span> {{count($course->users)}} <span class="lnr lnr-bubble"></span>35</p>
										<h4 class="{{ $course->status == '0' ? 'text-success' : 'text-danger'}}">{{$course->status == '0' ? 'FREE' : 'PAID'}}</h4>
									</div>									
								</div>
								<div class="details" style="background-color:#f7f7f7;padding:15px ">
									<a href="/courses/{{$course->slug}}">
										<h4>
											{{ \Str::limit($course->title,40)}}
										</h4>
									</a>
									<p>
										{{ \Str::limit($course->description,105)}}										
									</p>
								</div>
							</div>
						    @endforeach
						</div>
					</div>
					}
				@endif		


			</div>
		</section>
		<!-- End Show All Tracks Area -->


<!-- ---------------------------------------------------------------------------------------- -->

			<!-- Start search-course Area -->
			<section class="search-course-area relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row justify-content-between align-items-center">
						<div class="col-lg-6 col-md-6 search-course-left">
							<h1 class="text-white">
								Get reduced fee <br>
								during this Summer!
							</h1>
							<p>
								inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially in the workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach.
							</p>
							<div class="row details-content">
								<div class="col single-detials">
									<span class="lnr lnr-graduation-hat"></span>
									<h4>Expert Instructors</h4>		
									<p>
										Usage of the Internet is becoming more common due to rapid advancement of technology and power.
									</p>						
								</div>
								<div class="col single-detials">
									<span class="lnr lnr-license"></span>
									<h4>Certification</h4>		
									<p>
										Usage of the Internet is becoming more common due to rapid advancement of technology and power.
									</p>						
								</div>								
							</div>
						</div>
					</div>
				</div>	
			</section>
			<!-- End search-course Area -->
			
			
			
			<!-- Start cta-one Area -->
			</br></br></br></br></br>
			<section class="cta-one-area relative section-gap">
				<div class="container">
					<div class="overlay overlay-bg"></div>
					<div class="row justify-content-center">
						<div class="wrap">
							<h1 class="text-white">Become an instructor</h1>
							<p>
								There is a moment in the life of any aspiring astronomer that it is time to buy that first telescope. It’s exciting to think about setting up your own viewing station whether that is on the deck.
							</p>								
						</div>					
					</div>
				</div>	
			</section>
			<!-- End cta-one Area -->

			<!-- Start blog Area -->
			<section class="blog-area section-gap" id="blog">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Latest posts from our Blog</h1>
								<p>In the history of modern astronomy there is.</p>
							</div>
						</div>
					</div>					
					<div class="row">
						<div class="col-lg-3 col-md-6 single-blog">
							<div class="thumb">
								<img class="img-fluid" src="{{asset('app-assets/img/b1.jpg')}}" alt="">								
							</div>
							<p class="meta">25 April, 2018  |  By Mark Wiens</p>
							
								<h5>Addiction When Gambling Becomes A Problem</h5>
							<p>
								Computers have become ubiquitous in almost every facet of our lives. At work, desk jockeys spend hours in front of their.
							</p>
							<span class="details">Details</span><span class="lnr lnr-arrow-right"></span>		
						</div>
						<div class="col-lg-3 col-md-6 single-blog">
							<div class="thumb">
								<img class="img-fluid" src="{{asset('app-assets/img/b2.jpg')}}" alt="">								
							</div>
							<p class="meta">25 April, 2018  |  By Mark Wiens</p>
								<h5>Computer Hardware Desktops And Notebooks</h5>
							<p>
								Ah, the technical interview. Nothing like it. Not only does it cause anxiety, but it causes anxiety for several different reasons. 
							</p>
							<span class="details">Details</span><span class="lnr lnr-arrow-right"></span>						
						</div>
						<div class="col-lg-3 col-md-6 single-blog">
							<div class="thumb">
								<img class="img-fluid" src="{{asset('app-assets/img/b3.jpg')}}" alt="">								
							</div>
							<p class="meta">25 April, 2018  |  By <a href="#">Mark Wiens</a>
								<h5>Make Myspace Your Best Designed Space</h5>

							<p>
								Plantronics with its GN Netcom wireless headset creates the next generation of wireless headset and other products such as wireless.
							</p>
							<span class="details">Details</span><span class="lnr lnr-arrow-right"></span></a>									
						</div>
						<div class="col-lg-3 col-md-6 single-blog">
							<div class="thumb">
								<img class="img-fluid" src="{{asset('app-assets/img/b4.jpg')}}" alt="">								
							</div>
							<p class="meta">25 April, 2018  |  By <a href="#">Mark Wiens</a></p>
								<h5>Video Games Playing With Imagination</h5>
							<p>
								About 64% of all on-line teens say that do things online that they wouldn’t want their parents to know about.   11% of all adult internet 
							</p>
								<span class="details">Details</span><span class="lnr lnr-arrow-right"></span>							
						</div>							
					</div>
				</div>	
			</section>
			<!-- End blog Area -->			
			


@endsection