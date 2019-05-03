<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet"/>
	<link href="css/index.css" rel="stylesheet"/>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<title>Ideal Event</title>
</head>
<body id="myPage">
	<button id="myBtn" class="slideanim" onclick="topFunction()" title="Go to top"><a href="#myPage"></a></button>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			<a class="navbar-brand" href="#myPage"><img id="logo" src="images/eventlogo.png" alt="LOGO" style="height: 46px;width: 150px;"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a data-toggle="modal" href="#registerModal">REGISTER</a></li>
					<li><a href="#services">SERVICES</a></li>
					<li><a href="#portfolio">PORTFOLIO</a></li>
					<li><a href="#about">ABOUT US</a></li>
					<li><a href="#contact">CONTACT</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container"><a href="#myPage" class="scroll" id="#toTop" style="display:block;"></a></div>
	
	<div class="jumbotron text-center">
		<h1>You Just Plan. We Will Execute.</h1>
		<p>Your guide to the world of event vendors</p>
			<a data-toggle="modal" href="#loginModal"><input type="submit" class="btn btn-success btn-lg" value="LOGIN"></a>
	</div>
	<div class="modal fade" id="loginModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h2 class="modal-title">Login Form</h2>
				</div>
				<form action="validate.jsp" onsubmit="return validateLogin();" method="POST">
					<div class="modal-body">
						<div class="form-group">
                        <input value="" type="text" class="form-control" name="username" placeholder="Enter User Name" id="lname">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Password" name="password" id="lpassword">
						</div>
						<div class="form-group">
							<a href="forgotpassword.jsp">Forgot Password?</a>
							<a class="pull-right" data-toggle="modal" data-dismiss="modal" href="#registerModal">New User</a>
						</div>
					</div>
					<div class="modal-footer">
                                             
                                           <!--  <script>
                                                $(window).on('load',function(){
                                                    $('#loginModal').modal('show');
                                                });
                                            </script> -->
	
                                           <center>
                                            <p style="color:red; font-size: 12pt;">
                                                
                                            </p>
                                            </center>
                                            
						<center>
						<button type="submit" class="btn btn-primary">Login</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</center>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="modal fade" id="registerModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h2 class="modal-title">SignUp Form</h2>
				</div>
                                <form action="signUp.jsp" name = "registerationform" onsubmit="return(regvalidate())" method="POST">
				<div class="modal-body">
						<div class="form-group">
							<input value="" type="text" class="form-control" placeholder="Enter Your Full Name" name="name" id="rname">
                                                        <font color='red'> <div name="fullname" id="fulname"> </div> </font>
						</div>
						<div class="form-group">
							<input value="" type="text" class="form-control" placeholder="Enter User Name" name="username" id="runame">
                                                        <font color='red'> <div name="uname" id="uname"> </div> </font>
                                                </div>
						<div class="form-group">
							<input value="" type="email" class="form-control" placeholder="Enter Your Email Id" name="email" id="remail">
                                                        <font color='red'> <div name="email" id="email"> </div> </font>
                                                </div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Enter Password" name="password" id="rpassword">
                                                        <font color='red'> <div name="pass" id="pass"> </div> </font>
                                                </div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Confirm Password" name="cpassword" id="rcpassword">
                                                 <font color='red'> <div name="cpass" id="cpass"> </div> </font>       
                                                </div>
						<div>
							<label> Type Of User </label>
							<label class="radio-inline"><input type="radio" name="usertype" value="sprovider">Service Provider</label>
							<label class="radio-inline"><input type="radio" name="usertype" value="customer">Customer</label>
							<label class="pull-right"><a data-toggle="modal" data-dismiss="modal" href="#loginModal">Already Registered?</a></label>
                                                        <font color='red'> <div name="utyp" id="utyp"> </div> </font> 
                                                </div>
						</div>
						<div class="modal-footer">
                                                    
                                            <!-- <script>
                                                $(window).on('load',function(){
                                                    $('#registerModal').modal('show');
                                                });
                                            </script> -->
	
                                           <center>
                                            <p style="color:red; font-size: 12pt;">
                                                
                                            </p>
                                            </center>
                                           
							<center>
                                  <font color='red'> <div name="cpasss" id="cpasss"> </div> </font>
                                  <button type="submit" class="btn btn-primary">Submit</button>
                                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</center>
						</div>
                                    </form>
			</div>
		</div>
	</div>

	<div id="services" class="container-fluid">
	<div class="container text-center">
		<h2>SERVICES</h2>
		<br>
		<h3>What we offer</h3>
		<br>
		<div class="row slideanim">
			<div class="col-sm-3">
			    <a href="services.jsp?service=Photographer">
				<span class="glyphicon glyphicon-camera logo-small"></span></a>
				<h4>PHOTOGRAPHERS</h4>
			</div>
			<div class="col-sm-3">
			     <a href="services.jsp?service=Decorator">
				<span class="glyphicon glyphicon-star logo-small"></span></a>
				<h4>DECORATORS</h4>
			</div>
			<div class="col-sm-3">
			    <a href="services.jsp?service=DJ">
				<span class="glyphicon glyphicon-user logo-small"></span></a>
				<h4>DJ</h4>
			</div>
			<div class="col-sm-3">
			    <a href="services.jsp?service=Stylist">
				<span class="glyphicon glyphicon-user logo-small"></span></a>
				<h4>STYLISTS</h4>
			</div>
		</div>
		<br>
		<br>
		<div class="row slideanim">
			<div class="col-sm-3">
			     <a href="services.jsp?service=Astrologer">
				<span class="glyphicon glyphicon-certificate logo-small"></span></a>
				<h4>ASTROLOGERS</h4>
			</div>
			<div class="col-sm-3">
			    <a href="services.jsp?service=Choreographer">
				<span class="glyphicon glyphicon-music logo-small"></span></a>
				<h4>CHOREOGRAPHERS</h4>
			</div>
			<div class="col-sm-3">
			     <a href="services.jsp?service=Tent">
				<span class="glyphicon glyphicon-glass logo-small"></span></a>
				<h4>TENT RENTAL</h4>
			</div>
			<div class="col-sm-3">
			    <a href="services.jsp?service=Catering">
				<span class="glyphicon glyphicon-glass logo-small"></span></a>
				<h4>CATERING</h4>
			</div>
		</div>
		<br>
		<br>
		<div class="row slideanim">
			<div class="col-sm-3">
			     <a href="services.jsp?service=Accesories">
				<span class="glyphicon glyphicon-camera logo-small"></span></a>
				<h4>ACCESORIES</h4>
			</div>
			<div class="col-sm-3">
			    <a href="services.jsp?service=Showman">
				<span class="glyphicon glyphicon-star logo-small"></span></a>
				<h4>SHOWMAN</h4>
			</div>
			<div class="col-sm-3">
			    <a href="services.jsp?service=Entertainer">
				<span class="glyphicon glyphicon-user logo-small"></span></a>
				<h4>ENTERTAINERS</h4>
			</div>
			<div class="col-sm-3">
			    <a href="services.jsp?service=Music">
				<span class="glyphicon glyphicon-user logo-small"></span></a>
				<h4>MUSIC</h4>
			</div>
		</div>
		<br>
		<br>
		<div class="row slideanim">
			<div class="col-sm-3">
			    <a href="services.jsp?service=Courtyard">
				<span class="glyphicon glyphicon-certificate logo-small"></span></a>
				<h4>COURTYARD</h4>
			</div>
			<div class="col-sm-3">
			     <a href="services.jsp?service=Mehendi">
				<span class="glyphicon glyphicon-asterisk logo-small"></span></a>
				<h4>MEHENDI</h4>
			</div>
			<div class="col-sm-3">
			    <a href="services.jsp?service=Jewellery">
				<span class="glyphicon glyphicon-apple logo-small"></span></a>
				<h4>JEWELRY</h4>
			</div>
			<div class="col-sm-3">
			    <a href="services.jsp?service=Cake">
				<span class="glyphicon glyphicon-apple logo-small"></span></a>
				<h4>CAKES</h4>
			</div>
		</div>
	</div>
	</div>
	
	<div id="portfolio" class="container-fluid text-center">
		<h2>PORTFOLIO</h2>
		
		<h3>What we have created:</h3>
		<div class="row text-center slideanim">
			<div class="col-sm-4">
				<div class="thumbnail" style="height:250px;">
					<img src="images/makeup.jpg" alt="">
					<p><strong>MAKEUP</strong></p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail" style="height:250px;">
					<img src="images/partyhall.jpg" alt="">
					<p><strong>COURTYARD</strong></p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail" style="height:250px;">
					<img src="images/photography.jpg" alt="">
					<p><strong>PHOTOGRAPHER</strong></p>
				</div>
			</div>
		</div>
		
		<div class="row text-center slideanim">
			<div class="col-sm-4">
				<div class="thumbnail" style="height:250px;">
					<img src="images/dj.jpg" alt="">
					<p><strong>MUSIC</strong></p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail" style="height:250px;">
					<img src="images/party.jpg" alt="">
					<p><strong>ENTERTAINMENT</strong></p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="thumbnail" style="height:250px;">
					<img src="images/catering.jpg" alt="">
					<p><strong>CATERING</strong></p>
				</div>
			</div>
		</div>
	</div>
	
	<div id="about" class="container-fluid">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
				<h2 style="color:Navy;">ABOUT OUR COMPANY</h2>
				<br>
				<h3 style="color:Navy;">As we know, that it is very easy to plan something, but too difficult to execute at the other hand.</h3><br>
				<strong><i><p>Planning an event or conference is never easy. The process can be long and, often, a little bumpy as planners attempt to balance brand and sponsor interests, attendee must-haves and other high-value integrations. All of this is par for the course when you’re an event professional — it’s part of the good, the bad and the ugly of organizing successful programming, no matter how long you’ve been in business.</p>
				<p>The web application Enent Managemenet is a event social network for users and service providers. The users will provide/post all their requirements and service providers will give their quotes accordingly. Likewise, the user will select the best one as per their requirement and affordability out of all the service providers. The service providers includes Photographers, Videographers, Showmen, Event Planners, Decorators, Stylists, Entertainers, DJ, Bands, Choreographers, Caterers, Jewellery Salons, etc. After the completion of the task, the user can give their reviews and feedback about the service providers which will help the service providers to attract more and more customers.
				</p></i></strong>
				<br>
				
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<center><span class="glyphicon glyphicon-home logo slideanim"></span></center>
			</div>
		</div>
	</div>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-globe logo slideanim"></span>
			</div>
			<div class="col-sm-8">
				<h2>Our Values</h2>
				<br>
				<h4><strong>MISSION:</strong> Our mission is to provide world class events in a very affordable price.</h4><br>
				<p><strong>VISION:Our vision is to provide you the best service providers and create a negotiation between the customer and the service providers.</strong>
			</div>
		</div>
	</div>
	<br>

	<div class="container">
		<center><h2>What our customers say</h2></center>
		<br>
		<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<h4>"This company is the best. I am so happy with the result!"<br><span>Sruti Sandhya Dash</span></h4>
				</div>
				<div class="item">
					<h4>"One word... WOW!!"<br><span>Banani Patra</span></h4>
				</div>
				<div class="item">
					<h4>"Could I... BE any more happy with this company?"<br><span>Tamanna Priyadarshini</span></h4>
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div id="contact" class="container-fluid">
		<h2 class="text-center">CONTACT</h2>
		<div class="row">
			<div class="col-sm-5">
				<p style="font-weight: bold;font-size: 16px;">Contact us and we'll get back to you within 24 hours.</p>
				<p><span class="glyphicon glyphicon-map-marker"></span> Bhubaneswar,Odisha</p>
				<p><span class="glyphicon glyphicon-phone"></span> +91 7205226042</p>
				<p><span class="glyphicon glyphicon-envelope"></span> sovanrout96@gmail.com</p>
				<p><span class="glyphicon glyphicon-phone"></span> +91 8327778965</p>
				<p><span class="glyphicon glyphicon-envelope"></span> sovankumar96@gmail.com</p>
			</div>
			<div class="col-sm-7 slideanim">
				<div class="row">
					<div class="col-sm-6 form-group">
						<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
					</div>
					<div class="col-sm-6 form-group">
						<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
					</div>
				</div>
				<textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
				<div class="row">
					<div class="col-sm-12 form-group">
						<button class="btn btn-default pull-right" type="submit">Send</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<center><h2>Our Location:</h2></center>
	<div class="container" id="googleMap" style="height:300px;width:90%;"></div>
	<script>
		function myMap() {
			var myCenter = new google.maps.LatLng(20.2487398,85.8004262);
			var mapProp = {center:myCenter, zoom:12, scrollwheel:true, draggable:true, mapTypeId:google.maps.MapTypeId.ROADMAP};
			var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
			var marker = new google.maps.Marker({position:myCenter});
			marker.setMap(map);
		}
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD37LyYD5lvkgO_0GeAOKdQxMXRDFT-Jao&callback=myMap"></script>
	
	<footer class="container-fluid text-center">
		<a href="#myPage" title="To Top">
			<span class="glyphicon glyphicon-chevron-up"></span>
		</a>
		<strong><p>To Top</p></strong>
		<strong><p>Designed By <a href="https://www.soa.ac.in"><b>Sovan Kumar Rout</b></a></p></strong>
	</footer>
	
	<script>
		$(document).ready(function() {
			// Add smooth scrolling to all links in navbar + footer link + toTop
			$(".navbar a, footer a[href='#myPage'], #myBtn a").on('click', function(event) {
				// Make sure this.hash has a value before overriding default behavior
				if (this.hash !== "") {
					// Prevent default anchor click behavior
					event.preventDefault();

					// Store hash
					var hash = this.hash;

					// Using jQuery's animate() method to add smooth page scroll
					// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
					$('html, body').animate({
						scrollTop: $(hash).offset().top
					}, 600, function(){

							// Add hash (#) to URL when done scrolling (default click behavior)
							window.location.hash = hash;
						});
				} // End if
			});

			$(window).scroll(function() {
				$(".slideanim").each(function(){
					var pos = $(this).offset().top;

					var winTop = $(window).scrollTop();
					if (pos < winTop + 600) {
						$(this).addClass("slide");
					}
				});
			});
		});
	</script>
        <script>
    function regvalidate()
{
	if(document.registerationform.name.value=="")
	{
	  document.getElementById('fulname').innerHTML = "Mandatory";
	  registerationform.name.focus();
	  return(false);
	}
	if(!document.getElementById('rname').value.match(/^[A-Za-z_ ]+$/))
	{
		document.getElementById('fulname').innerHTML = "Enter valid name";
	    registerationform.name.focus();
		return(false);
	}
 if(document.registerationform.username.value=="")
	 {
	  document.getElementById('uname').innerHTML = "Mandatory";
	  registerationform.username.focus();
	  document.getElementById("fulname").innerHTML = "";
	  return(false);
	 }
 if(!document.getElementById('runame').value.match(/^[0-9a-zA-Z]+$/))
	{
		document.getElementById('uname').innerHTML = "Alphanumeric only";
	    registerationform.username.focus();
		document.getElementById("fulname").innerHTML = "";
		return(false);
	}
	if(document.registerationform.email.value=="")
	{
	  document.getElementById('email').innerHTML = "Mandatory";
	  registerationform.email.focus();
	  document.getElementById("uname").innerHTML = "";
	  return(false);
	}
	if(!document.getElementById('remail').value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))
	{
		document.getElementById('email').innerHTML = "Enter a valid email address";
	    registerationform.email.focus();
		document.getElementById("uname").innerHTML = "";
		return(false);
	}
if(document.registerationform.password.value=="")
	{
	  document.getElementById('pass').innerHTML = "Mandatory";
	  registerationform.password.focus();
	  document.getElementById("email").innerHTML = "";
	  return(false);
    }
if(document.registerationform.password.value.length<8)
	{
		document.getElementById('pass').innerHTML = "password length should be more than 8 characters";
		registerationform.password.focus();
		document.getElementById("email").innerHTML = "";
		return(false);
	}
if(document.registerationform.password.value.length>16)
	{
		document.getElementById('pass').innerHTML = "password length should be less than 16 characters";
		registerationform.password.focus();
		document.getElementById("email").innerHTML = "";
		return(false);
	}
if(document.getElementById('rpassword').value.search(/[0-9]/)<0)
	{
		document.getElementById('pass').innerHTML = "password must contain at least one numeric value";
		registerationform.password.focus();
		document.getElementById("email").innerHTML = "";
		return(false);
	}
if(document.getElementById('rpassword').value.search(/[A-Z]/)<0)
	{
		document.getElementById('pass').innerHTML = "password must contain at least one uppercase";
		registerationform.password.focus();
		document.getElementById("email").innerHTML = "";
		return(false);
	}
if(document.getElementById('rpassword').value.search(/[a-z]/)<0)
	{
		document.getElementById('pass').innerHTML = "password must contain at least one lowercase";
		registerationform.password.focus();
		document.getElementById("email").innerHTML = "";
		return(false);
	}
if(document.getElementById('rpassword').value.search(/[!@#\$%\^&\*]/)<0)
	{
		document.getElementById('pass').innerHTML = "password must contain at least one special character";
		registerationform.password.focus();
		document.getElementById("email").innerHTML = "";
		return(false);
	}
	if(document.registerationform.cpassword.value=="")
	   {
	  document.getElementById('cpass').innerHTML = "Please re-type your password";
	  registerationform.cpassword.focus();
	  document.getElementById("pass").innerHTML = "";
	  document.getElementById('cpasss').innerHTML="";
	  return(false);
	   }
if((document.registerationform.password.value) != (document.registerationform.cpassword.value))
	{
	  document.getElementById('cpasss').innerHTML = "Password Must be equal";
	  registerationform.password.value = "";
	  registerationform.cpassword.value = "";
	  registerationform.password.focus();
	  document.getElementById("pass").innerHTML ="";
	  document.getElementById("cpass").innerHTML = "";
	  return(false);
	}
        var uType=document.getElementsByName('usertype');
        if(!uType[0].checked && !uType[1].checked){
            document.getElementById('utyp').innerHTML = "Please select User Type";
            return false;
        }
else
   {
   return(true);
   }
}       
        </script>
        
        
	<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction();};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>


</body>
</html>