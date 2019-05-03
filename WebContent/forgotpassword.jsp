<!DOCTYPE html>
<html>
    <head>
        <title>Forgot Password</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="col-sm-4 col-sm-offset-4">
                <h3 style="text-align: center;">Verify yourself</h3>
                <form name = "registerationform" onsubmit="return(regvalidate())" action="check.jsp" method="POST">
                    <div class="form-group">
                        <input type="text" name="name" class="form-control text-capitalize" id="fullname" placeholder="Enter Your Name">
                        <font color='red'> <div name="fulname" id="fulname"> </div> </font>
                    </div>
                    <div class="form-group">
                        <input type="text" name="email" class="form-control text-lowercase" placeholder="Enter Your Email ID">
                        <font color='red'> <div name="email" id="email"> </div> </font>
                    </div>
                    <center>
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-default">Reset</button>
                    </center>
                </form>
            </div>
        </div>
        <script>
            function regvalidate()
{
	if(document.registerationform.name.value=="")
	{
	  document.getElementById('fulname').innerHTML = "Mandatory";
	  registerationform.name.focus();
	  return(false);
	}
        if(document.registerationform.email.value=="")
	{
	  document.getElementById('email').innerHTML = "Mandatory";
	  registerationform.email.focus();
	  document.getElementById("fulname").innerHTML = "";
	  return(false);
	}
   }
        </script>
    </body>
</html>
