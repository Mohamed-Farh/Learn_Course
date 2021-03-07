<!-- start banner Area -->
<section class="banner-area relative" id="home">
	<div class="overlay overlay-bg"></div>	
	<div class="container">
		<div class="row fullscreen d-flex align-items-center justify-content-between">
			<div class="banner-content col-lg-9 col-md-12">
				<h1 class="text-uppercase">
					We Ensure better education
					for a better world			
				</h1>
				<p class="pt-10 pb-10">
					The COVID-19 has resulted in schools shut all across the world. Globally, over 1.2 billion children are out of the classroom.
                    As a result, education has changed dramatically, with the distinctive rise of e-learning, whereby teaching is undertaken remotely and on digital platforms.
				</p>
			
			
				  @guest
		          	<a href="/login_register" class="primary-btn text-uppercase">Get Started</a>
		          @endguest

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