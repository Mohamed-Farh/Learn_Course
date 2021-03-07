<!DOCTYPE html>

<html lang="zxx" class="no-js">
	
	<head>
		
		@include('layouts.partials.head')


		<style type="text/css">
			
			/*body {margin:2rem;}*/

			.modal-dialog {
			      max-width: 800px;
			      margin: 30px auto;
			  }
			.modal-body {
			  position:relative;
			  padding:0px;
			}
			.close {
			  position:absolute;
			  right:-30px;
			  top:0;
			  z-index:999;
			  font-size:2rem;
			  font-weight: normal;
			  color:#fff;
			  opacity:1;
			}
		</style>	
			
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
						 Courses		
					</h1>	
					<p class="text-white link-nav"><a href="/home">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href=""> {{$course->title}}</a></p>
				</div>	
			</div>
		</div>
	</section>
	<!-- End banner Area -->	

	<!-- Start course-details Area -->
	<section class="course-details-area pt-120">
		<div class="container">
			
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-70 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">{{$course->title}}</h1>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-8 left-contents">
					<div class="main-image">
						@if($course->photo)	
						    <img class="img-fluid course-image" src="/images/courses/{{ $course->photo->filename}}" alt="">
						@else
						    <img class="img-fluid course-image" src="/images/courses/default.jpg" alt="">
						@endif
					</div>
					<div class="jq-tab-wrapper" id="horizontalTab">
                        <div class="jq-tab-menu">
                            <div class="jq-tab-title active" data-tab="1">Objectives</div>
                            <div class="jq-tab-title" data-tab="2">Description</div>
                            <div class="jq-tab-title" data-tab="3">Course Outline</div>
                            <div class="jq-tab-title" data-tab="4">Comments</div>
                            <div class="jq-tab-title" data-tab="5">Reviews</div>
                        </div>
                        <div class="jq-tab-content-wrapper">
                            <div class="jq-tab-content active" data-tab="1">
                                When you enter into any new area of science, you almost always find yourself with a baffling new language of technical terms to learn before you can converse with the experts. This is certainly true in astronomy both in terms of terms that refer to the cosmos and terms that describe the tools of the trade, the most prevalent being the telescope.
								<br>
								<br>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.
                            </div>
                            
            

            <!--------------- Begin all Describtion Related To This Course ---------------->
                            
                            <div class="jq-tab-content" data-tab="2">
                                {{$course->description}}
                            </div>
            <!--------------- Begin all Describtion Related To This Course ---------------->                            

           



            <!--------------- Begin Showing all Videos Related To This Course ----------------> 
                            

                            <div class="jq-tab-content" data-tab="3">
								<ul class="course-list">
									@if(count($course->videos) >0)
									   
										<!-- If User Doesnt Auth -> The Vedios Will Not Appear -->
										@if(count(auth()->user()->courses()->where('slug', $course->slug)->get()) >0)
											@foreach($course->videos as $video)
										   	    <li class="justify-content-between d-flex">
													<div class="container video">
													    <h4 style="display:inline-block; width:70%;">{{\Str::limit($video->title, 120)}}</h4> 
														 <!-- Button trigger modal -->
														<button type="button" class="btn btn-primary video-btn primary-btn text-uppercase" data-toggle="modal" data-src="{{ $video->link }}" data-target="#myModal_{{ $video->id }}">
														     <i class="fa fa-youtube"></i> Watch Video
														</button>

														<!-- Modal -->
														<div class="modal fade" id="myModal_{{ $video->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
														    <div class="modal-dialog" role="document">
														        <div class="modal-content">
														            <div class="modal-body">

														                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
														                    <span aria-hidden="true">&times;</span>
														                </button>        
														               
														                <!-- 16:9 aspect ratio -->
														                <div class="embed-responsive embed-responsive-16by9">
														                    <iframe class="embed-responsive-item" src="{{ $video->link }}" id="video"  allowscriptaccess="always" allow="autoplay"></iframe>
														                </div>
														            </div>
														        </div>
												            </div>
														</div> 
													</div>
											    </li>    
										    @endforeach
										@else
											<div class="primary-btn" style="margin-left: 17%;margin-top: 7%;background-color:darkslategray">You Have To Enroll To See This Course Videos</div>
										@endif	



									@else
										<li>
											<div class="video">
												Sorry, This Course Doesn't Have Videos Yet.
										    </div>

									@endif
								</ul>
                            </div>

            <!--------------- Begin all Videos Related To This Course ---------------->  

                           




                            <div class="jq-tab-content comment-wrap" data-tab="4">
				                <div class="comments-area">
				                    <h4>05 Comments</h4>
				                    <div class="comment-list">
				                        <div class="single-comment justify-content-between d-flex">
				                            <div class="user justify-content-between d-flex">
				                                <div class="thumb">
				                                    <img src="img/blog/c1.jpg" alt="">
				                                </div>
				                                <div class="desc">
				                                    <h5><a href="#">Emilly Blunt</a></h5>
				                                    <p class="date">December 4, 2017 at 3:12 pm </p>
				                                    <p class="comment">
				                                        Never say goodbye till the end comes!
				                                    </p>
				                                </div>
				                            </div>
				                            <div class="reply-btn">
				                                   <a href="" class="btn-reply text-uppercase">reply</a> 
				                            </div>
				                        </div>
				                    </div>  
				                    <div class="comment-list left-padding">
				                        <div class="single-comment justify-content-between d-flex">
				                            <div class="user justify-content-between d-flex">
				                                <div class="thumb">
				                                    <img src="img/blog/c2.jpg" alt="">
				                                </div>
				                                <div class="desc">
				                                    <h5><a href="#">Elsie Cunningham</a></h5>
				                                    <p class="date">December 4, 2017 at 3:12 pm </p>
				                                    <p class="comment">
				                                        Never say goodbye till the end comes!
				                                    </p>
				                                </div>
				                            </div>
				                            <div class="reply-btn">
				                                   <a href="" class="btn-reply text-uppercase">reply</a> 
				                            </div>
				                        </div>
				                    </div>   
				                    <div class="comment-list">
				                        <div class="single-comment justify-content-between d-flex">
				                            <div class="user justify-content-between d-flex">
				                                <div class="thumb">
				                                    <img src="img/blog/c4.jpg" alt="">
				                                </div>
				                                <div class="desc">
				                                    <h5><a href="#">Maria Luna</a></h5>
				                                    <p class="date">December 4, 2017 at 3:12 pm </p>
				                                    <p class="comment">
				                                        Never say goodbye till the end comes!
				                                    </p>
				                                </div>
				                            </div>
				                            <div class="reply-btn">
				                                   <a href="" class="btn-reply text-uppercase">reply</a> 
				                            </div>
				                        </div>
				                    </div>                                                    
				                </div>
				                <div class="comment-form">
				                    <h4>Leave a Comment</h4>
				                    <form>
				                        <div class="form-group form-inline">
				                          <div class="form-group col-lg-6 col-md-12 name">
				                            <input type="text" class="form-control" id="name" placeholder="Enter Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Name'">
				                          </div>
				                          <div class="form-group col-lg-6 col-md-12 email">
				                            <input type="email" class="form-control" id="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'">
				                          </div>                                        
				                        </div>
				                        <div class="form-group">
				                            <input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
				                        </div>
				                        <div class="form-group">
				                            <textarea class="form-control mb-10" rows="5" name="message" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'" required=""></textarea>
				                        </div>
				                        <a href="#" class="mt-40 text-uppercase genric-btn primary text-center">Post Comment</a> 
				                    </form>
				                </div>     						                
                            </div>
                            <div class="jq-tab-content" data-tab="5">	
                            	<div class="review-top row pt-40">
                            		<div class="col-lg-3">
                            			<div class="avg-review">
                            				Average <br>
                            				<span>5.0</span> <br>
                            				(3 Ratings)
                            			</div>
                            		</div>
                            		<div class="col-lg-9">
                            			<h4 class="mb-20">Provide Your Rating</h4>
                            			<div class="d-flex flex-row reviews">
                            				<span>Quality</span>
											<div class="star">
												<i class="fa fa-star checked"></i>
												<i class="fa fa-star checked"></i>
												<i class="fa fa-star checked"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</div>
                            				<span>Outstanding</span>
                            			</div>
                            			<div class="d-flex flex-row reviews">
                            				<span>Puncuality</span>
											<div class="star">
												<i class="fa fa-star checked"></i>
												<i class="fa fa-star checked"></i>
												<i class="fa fa-star checked"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</div>
                            				<span>Outstanding</span>
                            			</div>
                            			<div class="d-flex flex-row reviews">
                            				<span>Quality</span>
											<div class="star">
												<i class="fa fa-star checked"></i>
												<i class="fa fa-star checked"></i>
												<i class="fa fa-star checked"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</div>
                            				<span>Outstanding</span>
                            			</div>
                            		</div>
                            	</div>
                            	<div class="feedeback">
                            		<h4 class="pb-20">Your Feedback</h4>
                            		<textarea name="feedback" class="form-control" cols="10" rows="10"></textarea>
                            		<a href="#" class="mt-20 primary-btn text-right text-uppercase">Submit</a>
                            	</div>
				                <div class="comments-area mb-30">
				                    <div class="comment-list">
				                        <div class="single-comment single-reviews justify-content-between d-flex">
				                            <div class="user justify-content-between d-flex">
				                                <div class="thumb">
				                                    <img src="img/blog/c1.jpg" alt="">
				                                </div>
				                                <div class="desc">
				                                    <h5><a href="#">Emilly Blunt</a>
													<div class="star">
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star"></span>
														<span class="fa fa-star"></span>
													</div>
				                                    </h5>
				                                    <p class="comment">
				                                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum ut sed, dolorum asperiores perspiciatis provident, odit maxime doloremque aliquam.
				                                    </p>
				                                </div>
				                            </div>
				                        </div>
				                    </div>  
				                    <div class="comment-list">
				                        <div class="single-comment single-reviews justify-content-between d-flex">
				                            <div class="user justify-content-between d-flex">
				                                <div class="thumb">
				                                    <img src="img/blog/c2.jpg" alt="">
				                                </div>
				                                <div class="desc">
				                                    <h5><a href="#">Elsie Cunningham</a>
													<div class="star">
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star"></span>
														<span class="fa fa-star"></span>
													</div>
				                                    </h5>
				                                    <p class="comment">
				                                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum ut sed, dolorum asperiores perspiciatis provident, odit maxime doloremque aliquam.
				                                    </p>
				                                </div>
				                            </div>
				                        </div>
				                    </div>   
				                    <div class="comment-list">
				                        <div class="single-comment single-reviews justify-content-between d-flex">
				                            <div class="user justify-content-between d-flex">
				                                <div class="thumb">
				                                    <img src="img/blog/c3.jpg" alt="">
				                                </div>
				                                <div class="desc">
				                                    <h5><a href="#">Maria Luna</a>
													<div class="star">
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star"></span>
														<span class="fa fa-star"></span>
													</div>
				                                    </h5>
				                                    <p class="comment">
				                                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum ut sed, dolorum asperiores perspiciatis provident, odit maxime doloremque aliquam.
				                                    </p>
				                                </div>
				                            </div>
				                        </div>
				                    </div>  
				                    <div class="comment-list">
				                        <div class="single-comment single-reviews justify-content-between d-flex">
				                            <div class="user justify-content-between d-flex">
				                                <div class="thumb">
				                                    <img src="img/blog/c4.jpg" alt="">
				                                </div>
				                                <div class="desc">
				                                    <h5><a href="#">Maria Luna</a>
													<div class="star">
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star checked"></span>
														<span class="fa fa-star"></span>
														<span class="fa fa-star"></span>
													</div>
				                                    </h5>
				                                    <p class="comment">
				                                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum ut sed, dolorum asperiores perspiciatis provident, odit maxime doloremque aliquam.
				                                    </p>
				                                </div>
				                            </div>
				                        </div>
				                    </div>  						                                                                      
				                </div>	                                	
                            </div>                                
                        </div>
                    </div>
				</div>
				<div class="col-lg-4 right-contents">
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
						
						@if(count(auth()->user()->courses()->where('slug', $course->slug)->get()) >0)
							<div class="primary-btn">Already Enrolled</div>
						@else
						<form method="GET" action="/course/{{$course->slug}}">	
							
							<input type="submit" value="ENROLL NOW" class="primary-btn text-uppercase" style="background-color: #f7631b;width: 60%;margin-left:25%;">
						</form>	
						@endif

							
					</div>	
				</div>
			</div>
		</div>	
	</section>
	<!-- End course-details Area -->
	

  <?php 
	$allcourses=App\Models\Course::all();
  ?>
	
		<!-- Start popular-courses Area --> 
		<section class="popular-courses-area section-gap courses-page">
			<div class="container">
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
						@foreach($allcourses as $course)
							@if(count($course->users) > 1)
								<div class="single-popular-carusel">
									<div class="thumb-wrap relative">	
										<div class="thumb relative">
											<div class="overlay overlay-bg"></div>
											@if($course->photo)	
											<img class="img-fluid" src="/images/courses/{{ $course->photo->filename}}" alt="">
											@else
											<img class="img-fluid" src="/images/courses/default.jpg" alt="">
											@endif
										</div>
										<div class="meta d-flex justify-content-between">
											<p><span class="lnr lnr-users"></span> {{count($course->users)}} <span class="lnr lnr-bubble"></span>35</p>
											<h4 class="{{ $course->status == '0' ? 'text-success' : 'text-danger'}}">{{$course->status == '0' ? 'FREE' : 'PAID'}}</h4>
										</div>									
									</div>
									<div class="details">
										<a href="/courses/{{$course->slug}}">
											<h4>{{ \Str::limit($course->title,50)}}</h4>
										</a>
										<a href="#">
											<h4>
												<span style="color: green" ><u>Track :</u></span> {{ \Str::limit($course->track->name,25)}}
											</h4>
										</a>
																			<p>
											When television was young, there was a hugely popular show based on the still popular fictional characte										
										</p>
									</div>
								
								</div>	
				            @endif
			            @endforeach
					</div>
				</div>
			

											
				<!-- <a href="#" class="primary-btn text-uppercase mx-auto">Load More Courses</a> -->													
			</div>
		</div>	
	</section>
	<!-- End popular-courses Area -->					

		<!-- start footer Area -->		
						    			

		@include('layouts.partials.footer')
		
		@include('layouts.partials.footer-scripts')
 	
 	</body>


</html>