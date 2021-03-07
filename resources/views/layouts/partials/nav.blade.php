<header id="header" id="home">
	<div class="header-top">
		<div class="container">
  		<div class="row">
  			<div class="col-lg-6 col-sm-6 col-8 header-top-left no-padding">
  				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					<li><a href="#"><i class="fa fa-behance"></i></a></li>
  				</ul>			
  			</div>
  			<div class="col-lg-6 col-sm-6 col-4 header-top-right no-padding">
  				<a href="tel:+953 012 3654 896"><span class="lnr lnr-phone-handset"></span> <span class="text">+953 012 3654 896</span></a>
  				<a href="mailto:support@colorlib.com"><span class="lnr lnr-envelope"></span> <span class="text">support@colorlib.com</span></a>			
  			</div>
  		</div>			  					
		</div>
    </div>
	
	<div class="container main-menu">
		<div class="row align-items-center justify-content-between d-flex">
	      <div id="logo">
	        <h2 style="color:#f7631b;">EYE<span style="color:white;"> COURSE</span></h2>
	      </div>
	      <nav id="nav-menu-container">
	        <ul class="nav-menu">
	            <li>
		          	<form method="get" action="/search" class="form-inline my-2 my-lg-0 search-form">
		          		<input name="q" type="text" class="form-control" placeholder="Find Your Course...">
	      			    <div class="input-group-append">
				            <button class="btn btn-secondary" type="submit">
				               <i class="fa fa-search"></i>
				            </button>
				        </div>
		          	</form>
	          </li>
	          <li><a href="/home">Home</a></li>
	          
	          
	          <?php $tracks=App\Models\Track::all(); ?>
	          <li class="menu-has-children"><a href="">Tracks</a>
	            <ul>
	             @foreach ($tracks as $track)
	              <li><a href="/tracks/{{ $track->name }}">{{  \Str::limit($track->name, 30)}}</a></li>
	             @endforeach 
	            </ul>
	          </li>
	          
	          <li><a href="/gallery">Gallery</a></li>
	          
	          <li><a href="/about">About</a></li>
	          <li><a href="/contact">Contact</a></li>


	          <li class="nav-item dropdown">
	          	<a class="nav-link @auth dropdown-toggle @endauth" href="/login" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          @auth
		          {{\Str::limit(auth()->user()->name,10)}}
		          @endauth
		          @guest
		          <li><a href="/login_register">Login</a></li>
		          @endguest
	      		  </a>
	            @auth
	            <ul>
	          		<li><a href="/edit-profile">Edit Profile</a></li>		
	          		<li><a href="/mycourse">My Courses</a></li>		
	                <li><a href="{{route('logout')}}">My Logout</a></li>	
	            </ul>
	            @endauth
	          </li>					          					          		          
	          

	        </ul>
	      </nav><!-- #nav-menu-container -->		    		
		</div>
	</div>
</header><!-- #header -->