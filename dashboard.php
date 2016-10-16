
  	  <?php
/*
 * Authorization Check
 * by Sanjay Prasad
 * sonzoy@gmail.com
 * http://www.openplus.in
 */

if(!isset($_SESSION['openpluslogged'])){
 header('Location:http://www.google.com');
		die();
}
?>


<!doctype html>
include('settings/authorize.php');
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
    <title>Sanjay | ADMIN+</title>
    <link rel="stylesheet" href="css/app.css" />
    <script src="bower_components/modernizr/modernizr.js"></script>
    
    
  </head>
  <body>
  <!--Navigation starts-->
   <!-- Header and Nav -->
  <nav class="top-bar" data-topbar>
    <ul class="title-area">
      <!-- Title Area -->
      <li class="name">
	  
          <h1>
          <a href="#">
            HOME <i class="fi fi-plus"></i>
          </a>
        </h1>
        
        
      </li>
    </ul>

    <section class="top-bar-section">
      <!-- Left Nav Section -->
      <ul class="left">
        <li class="divider"></li>
      </ul>

      <!-- Right Nav Section -->
      <ul class="right">
         <li class="divider"></li>
         <li class="divider"></li>
         <li class="divider"></li>
         <li class="divider"></li>
         
         <li class="has-dropdown">
            <a href="#">Settings</a>
             <ul class="dropdown">
                    <li><a href="dashboard.php?page=profile" ><i class="fi fi-torso"></i> &nbsp; Profile</a></li>
                    <li><a href="dashboard.php?page=password"><i class="fi fi-lock"></i> &nbsp; Password</a><li>
                  </ul>
         </li>
        
        <li class="divider"></li>
        <li class="has-form"> 
			<div class="row collapse"> 
				<div class="large-8 small-9 columns"> 
					<input type="text" placeholder="Search"> </div> <div class="large-4 small-3 columns"> 
						<a href="#" class="success button expand"> <i class="fi fi-magnifying-glass"></i></a> 
				</div>
			</div>
       </li>
      </ul>
    </section>
  </nav>


  <!-- End Header and Nav -->
  <!--Navigation ends -->

	<div class="large-1 columns">
	<!--sidebar-->
   <div class="row">
<div class="large-12 columns">
<img src="img/sanjay.jpg" width="64" height="64" class="round-img" alt="User Image"/>
</div>
</div>
<br/>
<dl class="accordion text-center">
  <dd>
    <a href="dashboard.php" style="background:#3EB05B;"  title="Dashboard Home">
	<i class="fa fa-home sancolor-white"></i></a>
  </dd>
  <dd>
    <a href="dashboard.php?page=info" style="background:#F7990D"  title="info"><i class="fa fa-info-circle sancolor-white"></i></a>
  </dd>
  
  <dd>
    <a href="dashboard.php?page=password" style="background:#E94B3B"  title="Change Password"><i class="fi fi-lock sancolor-white"></i></a>
  </dd>
  
  <dd>
    <a href="dashboard.php?page=logout"  style="background:#0099D3;"  title="Logout"><i class="fa fa-sign-out sancolor-white"></i></a>
  </dd>
</dl>
<br/>   <!--sidebar ends -->
	</div>

	  
	<div class="large-11 columns">	  
	   <div class="large-4 columns extra-padding">		 
		<div class="winbox-blue text-center">
						
			<br/>
						<h4 class="text-right" style="color:#fff"><i class="fi fi-info"></i> </h4>

			<span style="font-size:3em;font-family:'sans serif',arial;">My History</span>
			   
		</div>
	  </div>
	  
	   <div class="large-4 columns extra-padding">		 
		<div class="winbox-blue text-center">
						
			<br/>
			<h4 class="text-right" style="color:#fff"><i class="fi fi-calendar"></i></h4>
			<span style="font-size:3em;font-family:'sans serif',arial;">Book Appointment</span>
			   
		</div>
	  </div>
	  
	  <div class="large-4 columns extra-padding">		 
		<div class="winbox-blue text-center">
						
			<br/>
						<h4 class="text-right" style="color:#fff"><i class="fi fi-info"></i> </h4>

			<span style="font-size:3em;font-family:'sans serif',arial;">Video Chat</span>
			   
		</div>
	  </div>
	  
	  <div class="large-4 columns extra-padding">		 
		<div class="winbox-blue text-center">
						
			<br/>
						<h4 class="text-right" style="color:#fff"><i class="fi fi-info"></i> </h4>

			<span style="font-size:3em;font-family:'sans serif',arial;">Case Plan</span>
			   
		</div>
	  </div>
	  
	  <div class="large-4 columns extra-padding">		 
		<div class="winbox-blue text-center">
						
			<br/>
						<h4 class="text-right" style="color:#fff"><i class="fi fi-info"></i> </h4>

			<span style="font-size:3em;font-family:'sans serif',arial;">Findings</span>
			   
		</div>
	  </div>
	  
	  
	   <div class="large-4 columns extra-padding">		 
		<div class="winbox-blue text-center">
						
			<br/>
						<h4 class="text-right" style="color:#fff"><i class="fi fi-info"></i> </h4>

			<span style="font-size:3em;font-family:'sans serif',arial;">Emergency Contacts</span>
			   
		</div>
	  </div>
	  <div class="large-4 columns extra-padding">		 
		<div class="winbox-blue text-center">
						
			<br/>
						<h4 class="text-right" style="color:#fff"><i class="fi fi-info"></i> </h4>

			<span style="font-size:3em;font-family:'sans serif',arial;">My Reports</span>
			   
		</div>
	  </div>
	  
	  <div class="large-4 columns extra-padding">		 
		<div class="winbox-blue text-center">
						
			<br/>
						<h4 class="text-right" style="color:#fff"><i class="fi fi-info"></i> </h4>

			<span style="font-size:3em;font-family:'sans serif',arial;">My billing</span>
			   
		</div>
	  </div>
	  <div class="large-4 columns extra-padding">		 
		<div class="winbox-blue text-center">
						
			<br/>
						<h4 class="text-right" style="color:#fff"><i class="fi fi-info"></i> </h4>

			<span style="font-size:3em;font-family:'sans serif',arial;">Medical Insurance</span>
			   
		</div>
	  </div>
	  
	  
	  
	   
	  
	  
	  
	  
	  

	  	 
	  


	</div>
 
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bower_components/foundation/js/foundation.min.js"></script>
    <script src="js/app.js"></script>
    <script src="js/reveal.js"></script>
  </body>
</html>
