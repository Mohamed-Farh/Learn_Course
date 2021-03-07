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
								About Us				
							</h1>	
							<p class="text-white link-nav"><a href="index.blade.php">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.blade.php"> About Us</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->			

<!-- Start feature Area -->
<section class="feature-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<div class="single-feature">
					<div class="title">
						<h4>Online Courses</h4>
					</div>
					<div class="desc-wrap">
						<p>
							Usage of the Internet is becoming more common due to rapid advancement
							of technology.
						</p>
						<h3 class="title">{{ \App\Models\Course::all()->count() }}</h3>									
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="single-feature">
					<div class="title">
						<h4>Students Enrolled</h4>
					</div>
					<div class="desc-wrap">
						<p>
							For many of us,first experience of learning about the celestial bodies begins when we saw our first.
						</p>
						<h3 class="title">{{ \App\User::all()->count() }}</h3>									
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="single-feature">
					<div class="title">
						<h4>Tracks</h4>
					</div>
					<div class="desc-wrap">
						<p>
							If you are a serious astronomy fanatic like a lot of us are, you can probably remember that one event.
						</p>
						<h3 class="title">{{ \App\Models\Track::all()->count() }}</h3>									
					</div>
				</div>
			</div>												
		</div>
	</div>	
</section>
<!-- End feature Area -->		

			<!-- Start info Area -->
			<section class="info-area pb-120">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-lg-6 no-padding info-area-left">
							<img class="img-fluid" src="{{asset('app-assets/img/about-img.jpg')}}" alt="">
						</div>
						<div class="col-lg-6 info-area-right">
							<h1>Who we are
							to Serave the nation</h1>
							<p>inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially in the workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach.</p>
							<br>
							<p>
								inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially in the workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach. inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially in the workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach.
							</p>
						</div>
					</div>
				</div>	
			</section>
			<!-- End info Area -->	

			<!-- Start course-mission Area -->
			<section class="course-mission-area pb-120">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Goals to Achieve for the leadership</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>							
                    <div class="row">
                        <div class="col-md-6 accordion-left">

                            <!-- accordion 2 start-->
                            <dl class="accordion">
                                <dt>
                                    <a href="">Success</a>
                                </dt>
                                <dd>
                                    Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque mattis, leo quam aliquet diam, congue laoreet elit metus eget diam. Proin ac metus diam.
                                </dd>
                                <dt>
                                    <a href="">Info</a>
                                </dt>
                                <dd>
                                    Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis. leo quam aliquet diam, congue laoreet elit metus eget diam.
                                </dd>
                                <dt>
                                    <a href="">Danger</a>
                                </dt>
                                <dd>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. Proin ac metus diam.
                                </dd>
                                <dt>
                                    <a href="">Warning</a>
                                </dt>
                                <dd>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. Proin ac metus diam.
                                </dd>                                    
                            </dl>
                            <!-- accordion 2 end-->
                        </div>
                        <div class="col-md-6 video-right justify-content-center align-items-center d-flex relative">
                        	<div class="overlay overlay-bg"></div>
							<a class="play-btn" href="https://www.youtube.com/watch?v=ARA0AxrnHdM"><img class="img-fluid mx-auto" src="{{asset('app-assets/img/play.png')}}" alt=""></a>
                        </div>
                    </div>
				</div>	
			</section>
			<!-- End course-mission Area -->
					

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

		<!-- start footer Area -->		
						    			

		@include('layouts.partials.footer')
		
		@include('layouts.partials.footer-scripts')
 	
 	</body>


</html>