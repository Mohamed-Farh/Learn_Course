<!DOCTYPE html>

<html lang="zxx" class="no-js">
	
	<head>
		
		@include('layouts.partials.head')
			
	</head>
	

	<body>
	
		@include('layouts.partials.nav')
		<!-- #header -->
		

		<!-- start banner Area -->
		<section class="banner-area relative about-banner" id="home">	
			<div class="overlay overlay-bg"></div>
			<div class="container">				
				<div class="row d-flex align-items-center justify-content-center">
					<div class="about-content col-lg-12">
						<h1 class="text-white">
							 {{ $track->name }}		
						</h1></br>	
						<p class="text-white link-nav"><a href="/home">Home </a>  <span class="lnr lnr-arrow-right"></span>Tracks</p>
					</div>	
				</div>
			</div>
		</section>
		
		<!-- End banner Area -->	

		<!-- Start event-details Area -->
		<section class="event-details-area section-gap">
			<div class="container">
				

				@foreach($courses as $course)
				<div class="row">
					<div class="col-lg-8 event-details-left">
						<div class="main-img">
							@if($course->photo)	
								<img class="img-fluid" src="/images/courses/{{ $course->photo->filename}}" alt="" style="width:100%; height:300px;">
							@else
								<img class="img-fluid" src="/images/courses/default.jpg" alt="" style="width:100%; height:min-content;">
							@endif
						</div>
						<div class="details-content">
							<a href="/courses/{{$course->slug}}">
								<h4>{{ \Str::limit($course->title,50)}}</h4>
							</a>
							<p>{{ $course->description }}</p>
						</div>
					</div>
					<div class="col-lg-4 event-details-right">
						<div class="single-event-details">
							<h4>Details</h4>
							<ul class="mt-10">
								<li class="justify-content-between d-flex">
									<span>Track</span>
									<span>{{ $course->track->name }}</span>
								</li>
								<li class="justify-content-between d-flex">
									<span>Status</span>
									<span class="{{ $course->status == '0' ? 'text-success' : 'text-danger'}}">{{$course->status == '0' ? 'FREE' : 'PAID'}}</span>
								</li>
								<li class="justify-content-between d-flex">
									<span>Price</span>
										@if($course->status == '0')
										    <span class="text-success">$0</span>
										@else
										    <span class="text-danger">${{ $course->price }}</span>
										@endif
								</li>
								<li class="justify-content-between d-flex">
									<span>Language</span>
										@if($course->lang == '0')
										    <span>AR</span>
										@elseif($course->lang == '1')
										    <span>EN</span>
										@else
										    <span>Other</span>    
										@endif
								</li>														
								<li class="justify-content-between d-flex">
									<span>No.Of Users</span>
									<span>{{count($course->users)}}</span>
								</li>
								<li class="justify-content-between d-flex">
									<span>Date</span>
									<span>{{ $course->created_at->format('Y-m-d') }}</span>
								</li>													
							</ul>
							</br>
							@if( auth::user() && count(auth()->user()->courses()->where('slug', $course->slug)->get()) >0))
								<div class="primary-btn"style="margin-left:20%; background-color:darkslategray;">Already Enrolled</div>
							@else
							<form method="POST" action="/courses/{{$course->slug}}">
								{{-- {{method_field('PUT') }}  
	                             @csrf  --}}	
								<input type="submit" value="ENROLL NOW" class="primary-btn text-uppercase" style="background-color: #f7631b;width: 60%;margin-left:25%;">
							</form>	
							@endif		
						</div>													
					</div>
				</div>
				<hr style="width:100%;text-align:center;background-color:#f7631b">
				</br>
				@endforeach

			</div>	
		</section>
		<!-- End event-details Area -->		

		<!-- start footer Area -->		
						    			

		@include('layouts.partials.footer')
		
		@include('layouts.partials.footer-scripts')
 	
 	</body>


</html>