<!DOCTYPE html>

<html lang="zxx" class="no-js">
	
	<head>
		
		@include('layouts.partials.head')
			
	</head>
	

	<body>
	
		@include('layouts.partials.nav')
		<!-- #header -->
	  
			<!-- start banner Area -->
			<section class="banner-area relative blog-home-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content blog-header-content col-lg-12">
							<h1 class="text-white">My Profile </h1></br>
							<h1 class="text-white"> & </h1></br>
							<h1 class="text-white"> My Courses </h1></br>	
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->				  

			<!-- Start top-category-widget Area -->
			<section class="top-category-widget-area pt-90 pb-90 ">
				<div class="container">
					<div class="row">		
					<!-- 	<div class="col-lg-4">
							<div class="single-cat-widget">
								<div class="content relative">
									<div class="overlay overlay-bg"></div>
								    <a href="#" target="_blank">
								      <div class="thumb">
								  		 <img class="content-image img-fluid d-block mx-auto" src="{{asset('app-assets/img/blog/cat-widget1.jpg')}}" alt="">
								  	  </div>
								      <div class="content-details">
								        <h4 class="content-title mx-auto text-uppercase">Social life</h4>
								        <span></span>								        
								        <p>Enjoy your social life together</p>
								      </div>
								    </a>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-cat-widget">
								<div class="content relative">
									<div class="overlay overlay-bg"></div>
								    <a href="#" target="_blank">
								      <div class="thumb">
								  		 <img class="content-image img-fluid d-block mx-auto" src="{{asset('app-assets/img/blog/cat-widget2.jpg')}}" alt="">
								  	  </div>
								      <div class="content-details">
								        <h4 class="content-title mx-auto text-uppercase">Politics</h4>
								        <span></span>								        
								        <p>Be a part of politics</p>
								      </div>
								    </a>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-cat-widget">
								<div class="content relative">
									<div class="overlay overlay-bg"></div>
								    <a href="#" target="_blank">
								      <div class="thumb">
								  		 <img class="content-image img-fluid d-block mx-auto" src="{{asset('app-assets/img/blog/cat-widget3.jpg')}}" alt="">
								  	  </div>
								      <div class="content-details">
								        <h4 class="content-title mx-auto text-uppercase">Food</h4>
								        <span></span>
								        <p>Let the food be finished</p>
								      </div>
								    </a>
								</div>
							</div>
						</div> -->												
					</div>
				</div>	
			</section>
			<!-- End top-category-widget Area -->
			
			<!-- Start post-content Area -->
			<section class="post-content-area">
				<div class="container">
					



					<div class="row">
						<div class="col-lg-8 posts-list">	
						@foreach($user_courses as $course )	
						
							<div class="single-post row">
								<div class="col-lg-3  col-md-3 meta-details">
									<ul class="mt-10">
										<li class="justify-content-between d-flex">
											<span>Track</span>
											<span>{{ $course->track->name }}</span>
										</li></br>
										<li class="justify-content-between d-flex">
											<span>Status</span>
											<span class="{{ $course->status == '0' ? 'text-success' : 'text-danger'}}">{{$course->status == '0' ? 'FREE' : 'PAID'}}</span>
										</li></br>
										<li class="justify-content-between d-flex">
											<span>Price</span>
												@if($course->status == '0')
												    <span class="text-success">$0</span>
												@else
												    <span class="text-danger">${{ $course->price }}</span>
												@endif
										</li></br>
										<li class="justify-content-between d-flex">
											<span>Language</span>
												@if($course->lang == '0')
												    <span>AR</span>
												@elseif($course->lang == '1')
												    <span>EN</span>
												@else
												    <span>Other</span>    
												@endif
										</li>	</br>														
										<li class="justify-content-between d-flex">
											<span>No.Of Users</span>
											<span>{{count($course->users)}}</span>
										</li></br>
										<li class="justify-content-between d-flex">
											<span>Date</span>
											<span>{{ $course->created_at->format('Y-m-d') }}</span>
										</li></br>													
									</ul>
								</div>
								<div class="col-lg-9 col-md-9 ">
									<div class="feature-img">
										@if($course->photo)	
										    <img class="img-fluid course-image" src="/images/courses/{{ $course->photo->filename}}" alt="">
										@else
										    <img class="img-fluid course-image" src="/images/courses/default.jpg" alt="">
										@endif
									</div>
									<a class="posts-title" href="/courses/{{$course->slug}}"><h3>{{ \Str::limit($course->title,50)}}</h3></a>
									<p class="excert">{{$course->description}}</p>
								</div>
							</div>
						@endforeach	

						<div class="mx-auto" style="width: 200px;">
							{{ $user_courses->links() }}
						</div></br></br>


														
		                   
						</div>
						<div class="col-lg-4 sidebar-widgets">
							<div class="widget-wrap">
								<div class="single-sidebar-widget popular-post-widget">
									<h4 class="popular-title" style="border-radius:20%">Profile Information</h4>
								</div>
								<div class="single-sidebar-widget user-info-widget">
									@if($user->photo)	
									    <img src="/images/courses/{{ $user->photo->filename}}" alt="" style="    border-radius:50%;">
									@else
									    <img src="{{asset('app-assets/img/blog/user-info.png')}}" alt="" style="    border-radius:50%;">
									@endif

									<a href="#"><h4>{{ $user->name }}</h4></a>
									<p>
										Senior blog writer
									</p>
									<ul class="social-links">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-github"></i></a></li>
										<li><a href="#"><i class="fa fa-behance"></i></a></li>
									</ul>
									<p>
										Boot camps have its supporters andit sdetractors. Some people do not understand why you should have to spend money on boot camp when you can get. Boot camps have itssuppor ters andits detractors.
									</p>
								</div>
								<div class="single-sidebar-widget popular-post-widget">
									<h4 class="popular-title"  style="border-radius:20%">Other Details</h4>
									<div class="popular-post-list">
										<div class="single-post-list d-flex flex-row align-items-center">
											<div class="details">
												<h6>E_Mail</h6>
												<p style="margin-left:35%;">{{ $user->email }}</p>
											</div>
										</div>
										<div class="single-post-list d-flex flex-row align-items-center">
											<div class="details">
												<h6>Status</h6>
												<p style="margin-left:232%;">{{ $user->admin == 1 ? 'Admin' : 'User'}}</p>
											</div>
										</div>
										<div class="single-post-list d-flex flex-row align-items-center">
											<div class="details">
												<h6>Points</h6>
												<p style="margin-left:270%;">{{ $user->score }}</p>
											</div>
										</div>
									</div>
								</div>

								
								<div class="single-sidebar-widget post-category-widget">
									<h4 class="category-title" style="border-radius:20%">My Tracks</h4>
									<ul class="cat-list">
										@foreach($tracks as $track)
										<li>
											<a href="/tracks/{{ $track->name }}" class="d-flex justify-content-between">
												<p>{{ $track->name }}</p>
											</a>
										</li>															
									@endforeach
									</ul>
								</div>

								<div class="single-sidebar-widget newsletter-widget">
									<h4 class="newsletter-title" style="border-radius:20%">Newsletter</h4>
									<p>
										Here, I focus on a range of items and features that we use in life without
										giving them a second thought.
									</p>
									<div class="form-group d-flex flex-row">
									   <div class="col-autos">
									      <div class="input-group">
									        <div class="input-group-prepend">
									          <div class="input-group-text"><i class="fa fa-envelope" aria-hidden="true"></i>
											</div>
									        </div>
									        <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Enter email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email'" >
									      </div>
									    </div>
									    <a href="#" class="bbtns">Subcribe</a>
									</div>	
									<p class="text-bottom">
										You can unsubscribe at any time
									</p>								
								</div>

							</div>
						</div>
					</div>
				</div>	
			</section>
			<!-- End post-content Area -->		

		<!-- start footer Area -->		
						    			

		@include('layouts.partials.footer')
		
		@include('layouts.partials.footer-scripts')
 	
 	</body>


</html>