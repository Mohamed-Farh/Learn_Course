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
								Gallery				
							</h1>	
							<p class="text-white link-nav"><a href="index.blade.php">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="gallery.blade.php"> Gallery</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	
				
			<!-- Start gallery Area -->
			<section class="gallery-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-7">
							<a href="img/gallery/g1.jpg" class="img-gal">
								<div class="single-imgs relative">		
									<div class="overlay overlay-bg"></div>
									<div class="relative">				
										<img class="img-fluid" src="{{asset('app-assets/img/gallery/g1.jpg')}}" alt="">		
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-5">
							<a href="img/gallery/g2.jpg" class="img-gal">
								<div class="single-imgs relative">		
									<div class="overlay overlay-bg"></div>
									<div class="relative">				
										<img class="img-fluid" src="{{asset('app-assets/img/gallery/g2.jpg')}}" alt="">				
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-4">
							<a href="img/gallery/g3.jpg" class="img-gal">
								<div class="single-imgs relative">		
									<div class="overlay overlay-bg"></div>
									<div class="relative">				
										<img class="img-fluid" src="{{asset('app-assets/img/gallery/g3.jpg')}}" alt="">				
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-4">
							<a href="img/gallery/g4.jpg" class="img-gal">
								<div class="single-imgs relative">		
									<div class="overlay overlay-bg"></div>
									<div class="relative">					
										<img class="img-fluid" src="{{asset('app-assets/img/gallery/g4.jpg')}}" alt="">				
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-4">
							<a href="img/gallery/g5.jpg"  class="img-gal">
								<div class="single-imgs relative">		
									<div class="overlay overlay-bg"></div>
									<div class="relative">					
										<img class="img-fluid" src="{{asset('app-assets/img/gallery/g5.jpg')}}" alt="">				
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-5">
							<a href="img/gallery/g6.jpg" class="img-gal">
								<div class="single-imgs relative">		
									<div class="overlay overlay-bg"></div>
									<div class="relative">				
										<img class="img-fluid" src="{{asset('app-assets/img/gallery/g6.jpg')}}" alt="">				
									</div>
								</div>
							 </a>
						</div>
						<div class="col-lg-7">
							<a href="img/gallery/g7.jpg" class="img-gal">
								<div class="single-imgs relative">		
									<div class="overlay overlay-bg"></div>
									<div  class="relative">					
										<img class="img-fluid" src="{{asset('app-assets/img/gallery/g7.jpg')}}" alt="">				
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>	
			</section>
			<!-- End gallery Area -->
													

		@include('layouts.partials.footer')
		
		@include('layouts.partials.footer-scripts')
 	
 	</body>


</html>